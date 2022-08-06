namespace :dev do
  desc "Configure the development environment"
  task setup: :environment do
    if Rails.env.development?
      spinner = TTY::Spinner.new("[:spinner] Loading ...", format: :classic)
      spinner.auto_spin
      puts %x(rails db:drop db:create db:migrate dev:add_coins dev:add_consensus_mechanism)
      spinner.stop("(successful)")
    else
      puts 'You are not in development environment!'
    end    
  end

  desc "Register coins"
  task add_coins: :environment do
  
    coins = [
      {
        description: 'Bitcoin',
        acronym: 'BTC',
        url_image: 'https://logospng.org/download/bitcoin/logo-bitcoin-256.png'
      },

      {      
        description: 'Ethereum',
        acronym: 'ETH',
        url_image: 'https://cdn.iconscout.com/icon/free/png-256/ethereum-3521413-2944857.png'
      },

      {      
        description: 'Tether',
        acronym: 'USDT',
        url_image: 'https://logospng.org/download/tether/logo-tether-256.png'
      },

      {      
        description: 'Binance',
        acronym: 'BNB',
        url_image: 'https://iconarchive.com/download/i109472/cjdowner/cryptocurrency-flat/Binance-Coin-BNB.ico'
      },

      {      
        description: 'Cardano',
        acronym: 'ADA',
        url_image: 'https://logospng.org/download/cardano/logo-cardano-256.png'
      }
    ]

    coins.each do |coin|      
      Coin.find_or_create_by!(coin)
    end
  end

  desc "Register consensus mechanism"
  task add_consensus_mechanism: :environment do

    consensus_mechanisms = [
      {description: 'Proof of Work', acronym: 'PoW'},

      {description: 'Proof of Stake', acronym: 'PoS'},

      {description: 'Proof of Capacity', acronym: 'PoC'}
    ]

    consensus_mechanisms.each do |cm|      
      ConsensusMechanism.find_or_create_by!(cm)
    end
  end
end

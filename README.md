# Massa Testnet Guide




![og-massa-tg-1](https://user-images.githubusercontent.com/108979536/208520740-29fcdb51-a3e7-4401-a85a-a89c0de5727c.png)





# The decentralized and scaled blockchain.

Massa is a truly decentralized blockchain controlled by thousands of people. With the breakthrough multithreaded technology, we’re set for mass adoption.

# Firt update your ubuntu

      sudo apt update & sudo apt upgrade -y 
   
# Install cargo 

      apt install cargo
   
   
# 1 : Use Script for quick installation :

      wget -O massa.sh https://raw.githubusercontent.com/appieasahbie/massa/main/massa.sh && chmod +x massa.sh && ./massa.sh

 ### Chose 1 and press enter
 
<img width="682" alt="Screenshot 2022-12-19 215218" src="https://user-images.githubusercontent.com/108979536/208521785-fbae8c4e-8a59-40e0-af0b-72a8152ab69e.png">

 ### Enter ip address of your server to create config.toml for routability
 
 
<img width="617" alt="Screenshot 2022-12-19 215426" src="https://user-images.githubusercontent.com/108979536/208522238-f2cbb242-e9a7-4869-8d39-1d5dd9881b47.png">


 ### Enter client password you need it to run your client and press enter ( save in your notepad)
 
 
 <img width="577" alt="Screenshot 2022-12-19 215628" src="https://user-images.githubusercontent.com/108979536/208522502-a8868cd0-7010-4ee1-a93f-4e26177d73d5.png">


 ### Congrats your node is installed 
 
 
 <img width="698" alt="Screenshot 2022-12-19 215733" src="https://user-images.githubusercontent.com/108979536/208522670-5b326e0b-c642-453b-808f-db393a221e92.png">


 ### Let`s check our node health use the commands bellow 
 
      cd massa/massa-node/


<img width="661" alt="Screenshot 2022-12-19 215939" src="https://user-images.githubusercontent.com/108979536/208523040-dd535b14-f9aa-4452-93fa-728406833aef.png">


 ### After cd massa node run your node with this command bellow (replace <password> with your saved password of client)
 
     RUST_BACKTRACE=full cargo run --release -- -p <PASSWORD> |& tee logs.txt



<img width="761" alt="Screenshot 2022-12-19 220342" src="https://user-images.githubusercontent.com/108979536/208523595-b62a40f0-3353-493b-98ca-bcac63f821e2.png">


 ### Open second terminal to run massa-client at the same time
 
      cd massa/massa-client/
 
 
 <img width="442" alt="Screenshot 2022-12-19 220747" src="https://user-images.githubusercontent.com/108979536/208524389-d150b57c-3c12-4322-bc3b-d2df8538e912.png">


And run your massa-client (replace <password> with your saved password of client)


     cargo run --release -- -p <PASSWORD>
   
 
 <img width="755" alt="Screenshot 2022-12-19 221106" src="https://user-images.githubusercontent.com/108979536/208524700-9550651c-74b1-4190-8fac-561cd616d79a.png">

 
 ### Untill you see this 
 
 <img width="771" alt="Screenshot 2022-12-19 222344" src="https://user-images.githubusercontent.com/108979536/208527435-cd81dbc2-73cc-4e14-9b0a-c0f1d65ebcc8.png">


# 2 : After installation create wallet 

     wallet_generate_secret_key
     
     

<img width="797" alt="Screenshot 2022-12-19 221316" src="https://user-images.githubusercontent.com/108979536/208525137-cd049ea2-0603-4fbf-a1e0-43f8c24d2716.png">

 ### Let1s check our keys
 
      wallet_info
      
      
<img width="536" alt="Screenshot 2022-12-19 221427" src="https://user-images.githubusercontent.com/108979536/208525322-e99ab612-944e-44bf-b3ab-cb397eecac1d.png">
     
 ### Add your node staking secret key
 
      node_add_staking_secret_keys < your secret key >
      
<img width="677" alt="Screenshot 2022-12-19 221612" src="https://user-images.githubusercontent.com/108979536/208525571-c0daf418-c13c-4c7b-afa5-77bfe3633966.png">
 
 ### If you see this that means that your node is not running wait 

<img width="851" alt="Screenshot 2022-12-19 221743" src="https://user-images.githubusercontent.com/108979536/208525787-fdf1c697-389d-4201-97a9-e039bcd195dc.png">

### Afetr you see this add you node staking secret key  



<img width="359" alt="Screenshot 2022-12-19 230959" src="https://user-images.githubusercontent.com/108979536/208536270-25518935-39be-4fe8-b526-021df389da2a.png">


<img width="653" alt="Screenshot 2022-12-19 231453" src="https://user-images.githubusercontent.com/108979536/208537102-902888ee-297b-497d-96cf-04839c71b46f.png">



 ### After that copy your wallet address and go to discord to fuacet your wallet
 
 
 <img width="221" alt="Screenshot 2022-12-19 231117" src="https://user-images.githubusercontent.com/108979536/208536484-0c58d8d2-334c-460f-b7fa-ea9e3aa9fef8.png">
     

 ### Make sure that you recived the tokens to check run the command bellow
 
    wallet_info 
 
 + You should see this in your balance , you will recive 500 test tokens
 
    <img width="564" alt="Screenshot 2022-12-19 231719" src="https://user-images.githubusercontent.com/108979536/208537442-86da25bf-ecde-4413-b3ff-2e93c0fa8162.png">

 
  ### Buy rolls ( copy your address , and make sure that your node is running after buying the rolls )
  
   + Like picture bellow
   
   
   <img width="764" alt="Screenshot 2022-12-19 231602" src="https://user-images.githubusercontent.com/108979536/208537229-b18618fa-dbb7-4372-a2f8-07863c83f1b3.png">

  
  
     buy_rolls A1kcYMh3co4dgLNWRj5Z8aaUZxopjKro1Cib5BY2p4CohkfdBGn 1 0 
     
     
<img width="552" alt="Screenshot 2022-12-19 231821" src="https://user-images.githubusercontent.com/108979536/208537603-cb42524e-13d9-4ff3-a65c-9982f1547cf2.png">

    
   ### After buying the rolls check with wallet info
 
     wallet_info
     
<img width="532" alt="Screenshot 2022-12-19 231936" src="https://user-images.githubusercontent.com/108979536/208537791-fcc424ee-d915-49be-a1bc-f72c0d9c525c.png">
 
 
  ### Now wait 1 hour you will see Active rolls
 
  ### Now go to discord and register your wallet and ip address ( Write something in the testnet-rewards-registration channel of massa Discord and the bot will DM you instructions )
 
 
 <img width="615" alt="Screenshot 2022-12-19 233105" src="https://user-images.githubusercontent.com/108979536/208539457-5d0363c7-5a59-4e9e-9050-3e96662fe63d.png">


 <img width="779" alt="Screenshot 2022-12-19 233201" src="https://user-images.githubusercontent.com/108979536/208539546-5d8e8439-b73f-4d39-9bcf-0bf5b8c0f2ef.png">


  ### copy this command from massabot (node_testnet_rewards_program_ownership_proof your_staking_address 1010687132634972171) 
    
     
<img width="442" alt="Screenshot 2022-12-19 233243" src="https://user-images.githubusercontent.com/108979536/208539700-64f0257e-6870-4152-9659-2055a9527e58.png">


   node_testnet_rewards_program_ownership_proof A1kcYMh3co4dgLNWRj5Z8aaUZxopjKro1Cib5BY2p4CohkfdBGn 1010687132634972171
   
   <img width="919" alt="Screenshot 2022-12-19 233623" src="https://user-images.githubusercontent.com/108979536/208540196-ad028552-9275-41bb-b0cb-cd015b401ad2.png">
   
   
 ### copy this code and past on massabot
 
      P12H1Ak9iaUJzj7A1i6XiB7KexYqErdv7WApLwvVV6c4iDhPX9VD/5EZLVjw4xB6TqKAPxD4up6wtgjjRQxWuE7Znf8kHnvAjbKQ3GQdv4n7yKAHJ3RdE7nzCcrTFstN8wGMih8JJaS67RZEdz/P12VpdPMs343b8xvp4D7tLwLJkSTTHPgNZKzvhrs7w5eqrCBeDGw/Uz2P56v3XrdepzDQDaGRmcgxjCQfuUA6vfKGEHq3vUK7HWtLPYSNGwEnV9Yiq4X2wP5CL4vwKmtd5sN75ktxgf8pPKLER
      
      
      
      
 <img width="567" alt="Screenshot 2022-12-19 234012" src="https://user-images.githubusercontent.com/108979536/208540586-27ccba69-66cd-41b8-847b-97a6769ba299.png">

Good

### Now copy your ip address of your server and past on massabot


<img width="566" alt="Screenshot 2022-12-19 234126" src="https://user-images.githubusercontent.com/108979536/208540785-d029fb42-ef34-41d4-baf1-7a038acd7f65.png">


 ### To check the points on massabot type 
 
     info
     
     
<img width="544" alt="Screenshot 2022-12-19 234205" src="https://user-images.githubusercontent.com/108979536/208540905-5e62203a-92e8-4340-9b91-e7f71552c801.png">



Done



[buy me a cup of coffee](https://www.paypal.com/paypalme/AbdelAkridi?country.x=NL&locale.x=en_US)


   
   

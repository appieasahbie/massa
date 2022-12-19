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


<img width="771" alt="Screenshot 2022-12-19 222344" src="https://user-images.githubusercontent.com/108979536/208527615-e4792a45-4bb5-4731-9cb1-e173b2fa1240.png">



     
 


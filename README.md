# Ubuntu_Setup_Scripts

インストールしたてのUbuntu18.04に必要なソフトを入れるスクリプトたちです。

## 使い方

1. 
    ```bash
    sh fix_time.sh
    ```  
    でUbuntuの時刻合わせをする。  

1. 
    ```bash
    sh install_essential_softwares.sh
    ```  
    でsshやらnvidiaドライバやら必要なパッケージをインストールする。

1. 
    マシンを再起動する。

1. 
    ```bash
    sh install_nvidia_docker.sh
    ```  
    でdocker関連パッケージをインストールする。

1. 
    マシンを再起動する。

# Parcial3-Virtual
Karen Alejandra Sontay Reyes - 1026820

Esta es la parte inicial para que funcione en kubernetes:
![image](https://github.com/Karen-sontay/Parcial3-Virtual/assets/78243596/473bfec1-365a-4451-9802-17f57fbfc349)


terraform apply:

![image](https://github.com/Karen-sontay/Parcial3-Virtual/assets/78243596/e80d9053-c3ad-4ece-8428-adb45648b6af)


![image](https://github.com/Karen-sontay/Parcial3-Virtual/assets/78243596/8780b997-22ae-4500-b9f7-a5d3aafa39a6)

En esta parte se puede observar que lo kubernetes estan en funcionamiento y como se puede acceder a ellos:

![image](https://github.com/Karen-sontay/Parcial3-Virtual/assets/78243596/6bcd385b-c8c2-4b5b-adf8-4c869bfce3b4)


Pruebas de funcionamiento:
![image](https://github.com/Karen-sontay/Parcial3-Virtual/assets/78243596/24895b33-ea70-4c70-865d-d793db0e7f39)
![image](https://github.com/Karen-sontay/Parcial3-Virtual/assets/78243596/7eaf4281-2663-4c8d-ba42-cb633ec63659)
![image](https://github.com/Karen-sontay/Parcial3-Virtual/assets/78243596/eb859644-ad48-4830-906b-389d96c739fc)

En la  configuración de cada servicio se debe declara la imagen a utilizar, el puerto, que es loadbalancer para ingresar con localhost, el nombre, etc:
Para implementar nginx se debe de poner el siguiente codigo en el main.tf la siguiente configuración::

![image](https://github.com/Karen-sontay/Parcial3-Virtual/assets/78243596/cb9928a9-755f-4c4b-a999-b1546901fbbb)

![image](https://github.com/Karen-sontay/Parcial3-Virtual/assets/78243596/94d52a71-f6ed-4748-9564-6c4c63482843)

Para implementar el api se debe de poner el siguiente codigo en el main.tf la siguiente configuración:

![image](https://github.com/Karen-sontay/Parcial3-Virtual/assets/78243596/926ed0ce-2762-4f63-a9d6-a4905de66dd6)
![image](https://github.com/Karen-sontay/Parcial3-Virtual/assets/78243596/a6a799d3-50f0-4768-9abf-d7dc5c283335)


Para que funcione la base de datos realacional se debe de poner el siguiente codigo en el main.tf la siguiente configuración:

![image](https://github.com/Karen-sontay/Parcial3-Virtual/assets/78243596/f04c30cf-909f-4ee7-bad9-6c9732e6c83e)

![image](https://github.com/Karen-sontay/Parcial3-Virtual/assets/78243596/938b170d-36e6-464b-8320-e4bcae4d1109)



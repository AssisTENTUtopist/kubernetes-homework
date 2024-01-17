# kubernetes-homework
1. Установка Docker в соответствии с https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04-ru
2. Создание Dockerfile (+index.html)
3. docker build -t assistentutopist/web:1.0.0 .
4. docker run assistentutopist/web:1.0.0
5. docker inspect 40e988258470 | grep IPAddress (узнаём ip-адрес поднятого контейнера)
6. curl http://172.17.0.2:8000
7. docker login -u assistentutopist
8. docker image push assistentutopist/web:1.0.0
9. Установка minikube в соответствии с https://kubernetes.io/ru/docs/tasks/tools/install-minikube/ (также были установлены conntrack, crictl)
10. Создание web.yaml
11. minikube kubectl -- apply -f ./web.yaml
12. kubectl get pods (если не было рестартов, то LivenessProde получает ответ от web-сервера)
13. kubectl port-forward --address 0.0.0.0 deployment/web 8081:8000
14. curl http://127.0.0.1:8081/

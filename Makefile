
imageUp:
	docker build -t my-express-app .

up:
	docker run -d -e PORT=3000 -e NODE_ENV=development -e DB_URL=database.sqlite --name user-api -p 3000:3000 my-express-app

remove:
	docker rm -f user-api

removeImage:
	docker rmi my-express-app

sleep:
	docker run --name user-api -d -p 3000:3000 my-express-app sleep 300

exec:
	docker exec -it user-api ls -a

logs:
	docker logs -f user-api

start:
	docker start user-api

stop:
	docker stop user-api
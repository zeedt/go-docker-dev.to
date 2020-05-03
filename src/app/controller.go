package main

import (
	"github.com/gin-gonic/gin"
	"net/http"
)

func initiateRoutes() *gin.Engine {

	route := gin.Default()
	route.LoadHTMLGlob("templates/**")

	route.GET("/", func(context *gin.Context) {
		context.HTML(http.StatusAccepted, "index.html", nil)
	})

	return route

}

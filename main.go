package main

import (
	"fmt"
)

func main() {
	fmt.Println("Attempting to reboot that shitty router...")

	// HACK: What a fucking joke. The shitty web server of my shitty router won't even respond
	// properly to HTTP requests, which causes this error:
	// Post http://192.168.1.1/: net/http: HTTP/1.x transport connection broken: malformed MIME header line: enter update_user_session
	// See issue https://github.com/golang/go/issues/21290

	// In the meantime, I can't use the go net/http package for this shit.

	// body := strings.NewReader(`name=user&pswd=ineagpon`)
	// req, err := http.NewRequest("POST", "http://192.168.1.1/login.cgi", body)
	// if err != nil {
	// 	os.Exit(1)
	// }

	// req.Header.Set("Connection", "keep-alive")
	// req.Header.Set("Cache-Control", "max-age=0")
	// req.Header.Set("Origin", "http://192.168.1.1")
	// req.Header.Set("Upgrade-Insecure-Requests", "1")
	// req.Header.Set("Content-Type", "application/x-www-form-urlencoded")
	// req.Header.Set("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3658.0 Safari/537.36")
	// req.Header.Set("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8")
	// req.Header.Set("Referer", "http://192.168.1.1/login.cgi")
	// req.Header.Set("Accept-Encoding", "gzip, deflate")
	// req.Header.Set("Accept-Language", "en-GB,en-US;q=0.9,en;q=0.8,fr;q=0.7")
	// req.Header.Set("Cookie", "lang=eng; lsid=GJVxxEXxebRFLnka")

	// resp, err := http.DefaultClient.Do(req)
	// if err != nil {
	// 	fmt.Println("Fucking router won't even let me login!")
	// 	fmt.Println(err)
	// 	os.Exit(2)
	// }
	// defer resp.Body.Close()

}

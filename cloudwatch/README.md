# Introduction
According to my CI/CD pipeline, I have deployed my app into S3 bucket. To monitor my app, I choose to use CloudWatch Synthetics Canaries. Its Heartbeat Monitoring can keep tracking to a single web page about its accessibility.

Web App URL: http://react-test-bucket-yukccy.s3-website.ap-east-1.amazonaws.com

# Major components
For my design, it will create a canary, an alarm with a SNS topic.

Canary: Main part for the app monitoring with a recurring schedule<br />
Alarm with SNS topic: To notify there is an unexpected error from my web app

I have also configured that the alarm will only be triggered while there are 3 consecutive threshold in 15 minutes.

# Screenshots
![alt text](https://github.com/yukccy/deploydockerizedreactapp/blob/main/cloudwatch/basic%20config.png)
![alt text](https://github.com/yukccy/deploydockerizedreactapp/blob/main/cloudwatch/schedule.png)
![alt text](https://github.com/yukccy/deploydockerizedreactapp/blob/main/cloudwatch/alarm%20and%20notification.png)

---
title: "Highly available Nginx using Auto
Scaling Group, Load Balancer and Terraform on AWS"
date: 2022-12-29T20:46:41Z
draft: false

# weight: 1
# aliases: ["/first"]
tags: ["first"]
author: "Me"
# author: ["Me", "You"] # multiple authors
showToc: true
TocOpen: false

hidemeta: false
comments: false
description: "Desc Text."
canonicalURL: "https://canonical.url/to/page"
disableHLJS: true # to disable highlightjs
disableShare: false
disableHLJS: false
hideSummary: false
searchHidden: true
ShowReadingTime: true
ShowBreadCrumbs: true
ShowPostNavLinks: true
ShowWordCount: true
ShowRssButtonInSectionTermList: true
UseHugoToc: true
cover:
    image: "<image path/url>" # image path/url
    alt: "<alt text>" # alt text
    caption: "<text>" # display caption under cover
    relative: false # when using page bundles set this to true
    hidden: true # only hide on current single page
editPost:
    URL: "https://github.com/<path_to_repo>/content"
    Text: "Suggest Changes" # edit text
    appendFilePath: true # to append file path to Edit link
---

In this tutorial we will be using terraform to build out our infrastructure on aws.

The goal of this tutorials is to provision a highly available application (simple nginx website) distributed across two availability zones on aws. The website will be hosted on amazon linux 2 ec2 instances and will be provisioned using a launch configuration and auto scaling group. For our clients to access the application we will provision an application load balancer to distribute the traffic in a 'round-robin' approach to one of the running instances, this will offer good availability if one instance becomes inactive or we loose access to an availability zone. This tutorial is a good starting point to cover auto scaling groups, load balancers and basic launch configurations. The application is simple by design as the concepts covered in this tutorial are my focus.

---

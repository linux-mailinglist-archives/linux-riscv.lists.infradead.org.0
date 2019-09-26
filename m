Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9245BF6BE
	for <lists+linux-riscv@lfdr.de>; Thu, 26 Sep 2019 18:30:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7A+PsPlF6zPMxOGFJw5y39dgcxfETHdt2puOk6JZJ14=; b=sWHL+2AIqAYMHdg/IrgKbBmvs
	FKyM2BCwWTyJYzHBigDh1D7fszHChhob+VGVPafBBwLlLAG0mf1InM7HrRk9XrhsH3SwMB6J9JeEb
	NcyK/R0WeSYnPSw3E9cJIpoRX90abM9S4BhkWAhI3GhNwALG9Uqt5eapHwYSqlhq7QBtidlOrWXWB
	nH8is8/Ugrq1nmiumcREfS8RYuBRGjFHk5TMH7UqCnOKhUMitQiq3BnotKxYw8PMILXzPf5OEtyw0
	Fv6ODS7tvOyKXGY7mkNZpwP9RajVm7vnoXIMJek6oJqIaQQril6TVgRTPqyPzSkvkuwNnnda2Bteb
	S2Lzi/6Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDWef-00024o-OU; Thu, 26 Sep 2019 16:30:10 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDWea-00013z-NZ
 for linux-riscv@lists.infradead.org; Thu, 26 Sep 2019 16:30:05 +0000
Received: by mail-pl1-x642.google.com with SMTP id q24so1258009plr.13
 for <linux-riscv@lists.infradead.org>; Thu, 26 Sep 2019 09:30:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pensando.io; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=iUBOjyHfuR7bXfhhUiHsxfKRvIQzrO86xTAr8Ifre0Q=;
 b=y3h5OT0UmQqXJi0n0rBvqkcTo+13EdxQBhESuHKUhhUdt4HIIcVQewbszw7316Jbj3
 B26hOzlkXv8XsgeN5pGs7wsfUu35kRVDjdfbd80Cz2QkLIg0M3MsvsJVJdd9QD5RXeiy
 6UEhQ9sxyZ6zQojKZM8g8YSAiU0HmfS6EeGLmm2G3M5zDUXby8glVotg/+s3ve95UAlT
 DAQ0U/ntgxEnEPfGxe+68Qz99D7tUdj8cjDtGb+44i81+8OKBcckxrd+3wvZeL0MsCVS
 GUydrXVlNXeNeT9yD3EB7dKB2lMU1zF3uY6+lKZ9hv2ld2NLoMT31L6wdQwnvoc03z5L
 JHDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=iUBOjyHfuR7bXfhhUiHsxfKRvIQzrO86xTAr8Ifre0Q=;
 b=Pu5JPfLLVb7RBNWdi6bMbYd0ZZfvG5+076EKcMXKxbrYwxz/CSp4sx3n04btP0O3AY
 EK8C1gj7EVHqLyA0UM7hVs1Q2YApp3C9ZKTFTLT1VVR87ki0MrR1eY7fXBbFNyWOMbbY
 IQ6wch/hGiEfcjuHYQPUE8NaAiasGNj9rorKPx0Z4uJL5SQTeI/qMwDrqmNIHTy4hkf1
 idfoopHMY/fZ85OWQ1DxUKVawiZS3mfHePiu29BlPfgxTBQw61CRllt9VbJrMfoKInOK
 TlVJchhpa0utfzBnwPWb/pcqnGZdd9DYEMB33qYvZOj9SWCDxQKXF6eVzG/ZFDcN1GKr
 XF+w==
X-Gm-Message-State: APjAAAVc/cwmdSY69DrcVSSSaUpoRHPTd4VxvA0gsv7kRNlwG1EEqTjD
 jwKnzlkzpnJmD6MPDNjV82A20Wd7XzLlV6Zi
X-Google-Smtp-Source: APXvYqzWSovEndvhpUlPPG2KWsLiHc/5J0wB0jU8KW7kk3lkOzlRWdHFYbFHIpUg2H8EkpfjsR5P5g==
X-Received: by 2002:a17:902:8a88:: with SMTP id
 p8mr4822043plo.152.1569515400373; 
 Thu, 26 Sep 2019 09:30:00 -0700 (PDT)
Received: from Shannons-MacBook-Pro.local
 (static-50-53-47-17.bvtn.or.frontiernet.net. [50.53.47.17])
 by smtp.gmail.com with ESMTPSA id e127sm3547209pfe.37.2019.09.26.09.29.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 26 Sep 2019 09:29:59 -0700 (PDT)
Subject: Re: [PATCH 1/3] docs: fix some broken references
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>, corbet@lwn.net
References: <b87385b2ac6ce6c75df82062fce2976149bbaa6b.1569330078.git.mchehab+samsung@kernel.org>
From: Shannon Nelson <snelson@pensando.io>
Message-ID: <81dc41d5-606a-7638-1d11-4fe53e9c2a7f@pensando.io>
Date: Thu, 26 Sep 2019 09:29:56 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <b87385b2ac6ce6c75df82062fce2976149bbaa6b.1569330078.git.mchehab+samsung@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_093004_775458_6F100A0B 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, James Hogan <jhogan@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 linux-mips@vger.kernel.org, Albert Ou <aou@eecs.berkeley.edu>,
 linux-riscv@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-cifs@vger.kernel.org, Leon Romanovsky <leon@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, linux-rdma@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Saeed Mahameed <saeedm@mellanox.com>, Guenter Roeck <linux@roeck-us.net>,
 devicetree@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 Mauro Carvalho Chehab <mchehab@infradead.org>, linux-gpio@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Pensando Drivers <drivers@pensando.io>, linux-hwmon@vger.kernel.org,
 netdev@vger.kernel.org, samba-technical@lists.samba.org,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Steve French <sfrench@samba.org>, Paul Burton <paul.burton@mips.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 9/24/19 6:01 AM, Mauro Carvalho Chehab wrote:
> There are a number of documentation files that got moved or
> renamed. update their references.
>
> Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>

>   drivers/net/ethernet/pensando/ionic/ionic_if.h            | 4 ++--

Acked-by: Shannon Nelson <snelson@pensando.io>


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B24D9C941D
	for <lists+linux-riscv@lfdr.de>; Thu,  3 Oct 2019 00:10:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hWbZ5D98/9Flhiax6ebdEH2A+CiAgDBrBJsm0sgY9L8=; b=mUNO5RxCUAmLRD
	fMksZj+pXeW7ikRdWOqP2k8tN5PwwlJetGjT3L2Wqy6885yFhavbJBSDltckSF2lm8hjShhm4tXx+
	74glx5278HlQCP+P9dVGxaTo46Cs0Dkw+SRQqVbpos7hb+sP6c92+XLEuVnGbX75rgOgNTCecNsRK
	7qEKgIphkHS8uuvtJ+cc7oqvhvaEYjto/K/ToAVivTzm4Wu+iPNxvmKu4hyLM0cHcil4T0Rfk5Ege
	XSqLSoHXdXeN8XAJNeRNBDuld3c+3ywmkMW3tNbdEIeDn8IsAIxQJa6qmzyC/C5hgBLqUWwYQumYB
	yKbOLyap8IqSTASJC5QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFmp1-0002Ci-Bx; Wed, 02 Oct 2019 22:10:11 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFmoy-0001iX-DW
 for linux-riscv@lists.infradead.org; Wed, 02 Oct 2019 22:10:10 +0000
Received: by mail-io1-xd43.google.com with SMTP id c6so845826ioo.13
 for <linux-riscv@lists.infradead.org>; Wed, 02 Oct 2019 15:10:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=6c+UtI1uYDbyYxUQwSa9jl5b6+0JQI0MJumhi18xfQg=;
 b=kboGfl6VR6AFG/YCMnKlVG1+DLAnMRlmrb8TUPJMLPA8HrsPJg1Wv8qBfjT/1q4Bki
 bBHNbIFDJCUEivY6JcJ8nmU4c1/OM5zE+nbfYeEhQBMkd4DgnMpt27LQCB66JR4ey7Zc
 LS2WLuNO7xZj1wj/3HEnrW2rj2gpzQnUmlwALGcM0Wm9pCjPbLzsr0mq1mz7Kq+YUbob
 9ht8eU3m5L9/xHmvhA1RZaSsMCPDzEHDCd0xVDaqVHUzRaHAY/ldADDT6KFMPW0FPa54
 yvmv+K2YV95Qr4Cy6BOpBN7bF6oZcWYlKVB7T3RlKmOz/SK53j9xC0hFrC1dwk4swq6R
 0EfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=6c+UtI1uYDbyYxUQwSa9jl5b6+0JQI0MJumhi18xfQg=;
 b=SMQ/hEBY9Rl6qH9E3cCWT1GUObYXtkGwyPGIOFIkK9UNhlJOTVtFC6/ANMcdGOTS8u
 iAPVOfFCdDgNk8aECB2iMLfhQUJaOGdqXtEGa6oUFR6pjDPZz7Fb/ktwRbD3D041t/jA
 wfdUWy4K2xDzy+ciP5pqoiwmoNx/lF4IikNP0KzWIijbJy5+LaNNHmqiEEI0nXCAl24J
 d0PdlyqpR7R31ix9/1NkkHSjWxqAGeOUxzqvo4mBLxYaNJd7xVCpWj7ssOGU1MbLVDc5
 +32o3q0lPNrmiSk6xJytJZbyt8tuBVHcLBqkYjPp6PBOgEO+lwN1ZYCrKOXBOO2YTGf8
 nQdg==
X-Gm-Message-State: APjAAAXm3a+tkXIKFkKBBD/zcRrLhlstZASDs/R/8lbsRLR+o4k/Qf0B
 A1Fs+d51U+6nTPGNHa2QA7ea6A==
X-Google-Smtp-Source: APXvYqwYei1g/xOWE2U+PJHvvft5qrbaOfrE6nk3lP1n8pcWvN76f2qecpvDskoigtVrXYEOtuSqcA==
X-Received: by 2002:a6b:8bd4:: with SMTP id n203mr5741864iod.133.1570054206751; 
 Wed, 02 Oct 2019 15:10:06 -0700 (PDT)
Received: from localhost (67-0-10-3.albq.qwest.net. [67.0.10.3])
 by smtp.gmail.com with ESMTPSA id l16sm350067ilm.67.2019.10.02.15.10.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Oct 2019 15:10:05 -0700 (PDT)
Date: Wed, 2 Oct 2019 15:10:05 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Subject: Re: [PATCH 1/3] docs: fix some broken references
In-Reply-To: <b87385b2ac6ce6c75df82062fce2976149bbaa6b.1569330078.git.mchehab+samsung@kernel.org>
Message-ID: <alpine.DEB.2.21.9999.1910021509260.3732@viisi.sifive.com>
References: <b87385b2ac6ce6c75df82062fce2976149bbaa6b.1569330078.git.mchehab+samsung@kernel.org>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_151008_542595_FE8928A1 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 James Hogan <jhogan@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Saeed Mahameed <saeedm@mellanox.com>, Jean Delvare <jdelvare@suse.com>,
 linux-riscv@lists.infradead.org, Pensando Drivers <drivers@pensando.io>,
 linux-cifs@vger.kernel.org, Leon Romanovsky <leon@kernel.org>, corbet@lwn.net,
 linux-rdma@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>,
 Mauro Carvalho Chehab <mchehab@infradead.org>, linux-gpio@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-hwmon@vger.kernel.org, netdev@vger.kernel.org,
 samba-technical@lists.samba.org, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, Steve French <sfrench@samba.org>,
 Paul Burton <paul.burton@mips.com>, Shannon Nelson <snelson@pensando.io>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 24 Sep 2019, Mauro Carvalho Chehab wrote:

> There are a number of documentation files that got moved or
> renamed. update their references.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
> ---
>  Documentation/devicetree/bindings/cpu/cpu-topology.txt    | 2 +-
>  Documentation/devicetree/bindings/timer/ingenic,tcu.txt   | 2 +-
>  Documentation/driver-api/gpio/driver.rst                  | 2 +-
>  Documentation/hwmon/inspur-ipsps1.rst                     | 2 +-
>  Documentation/mips/ingenic-tcu.rst                        | 2 +-
>  Documentation/networking/device_drivers/mellanox/mlx5.rst | 2 +-
>  MAINTAINERS                                               | 2 +-
>  drivers/net/ethernet/faraday/ftgmac100.c                  | 2 +-
>  drivers/net/ethernet/pensando/ionic/ionic_if.h            | 4 ++--
>  fs/cifs/cifsfs.c                                          | 2 +-
>  10 files changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/cpu/cpu-topology.txt b/Documentation/devicetree/bindings/cpu/cpu-topology.txt
> index 99918189403c..9bd530a35d14 100644
> --- a/Documentation/devicetree/bindings/cpu/cpu-topology.txt
> +++ b/Documentation/devicetree/bindings/cpu/cpu-topology.txt
> @@ -549,5 +549,5 @@ Example 3: HiFive Unleashed (RISC-V 64 bit, 4 core system)
>  [2] Devicetree NUMA binding description
>      Documentation/devicetree/bindings/numa.txt
>  [3] RISC-V Linux kernel documentation
> -    Documentation/devicetree/bindings/riscv/cpus.txt
> +    Documentation/devicetree/bindings/riscv/cpus.yaml
>  [4] https://www.devicetree.org/specifications/

For the RISC-V related change:

Acked-by: Paul Walmsley <paul.walmsley@sifive.com> # RISC-V


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

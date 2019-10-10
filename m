Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E21D2F8B
	for <lists+linux-riscv@lfdr.de>; Thu, 10 Oct 2019 19:28:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zdXNBEYX62686xOsWldCQvwi5EU+Pz9TodfiO/I0Z/w=; b=ckVKTZKLhy0jjB
	WyeJaY5RvwKihUbnZo9qqM7MIf6y/j/48XuZLYqCxMqYii1ENRH0doqwlgEjdYunkR1VJnN7HeR6a
	VQ3c/NiNf9Ddywt+IwgQi9/DJIEy/gL0stz2vBOQWlNEi0FVbgZDY6sGZts297r3bbf2rE56yImwX
	2oJUf0PLsuNvfIZdR/4ytC7lCVz4H7mrkIm/wE8g+GMvtOJ2cEA9afG3K2ddV5B0oJexYBdCMW5aB
	p13gh2YDcbt3j7UhymJcRZjZZXPlZsr+v39cAuEyh7yuioZu6fUA1zNlhRAouTAwW24zvNOrDB2GU
	uknylRY8rG5sZNBu4yfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIcEu-000494-57; Thu, 10 Oct 2019 17:28:36 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIcEr-00048d-68
 for linux-riscv@lists.infradead.org; Thu, 10 Oct 2019 17:28:34 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 7CBEE2BD;
 Thu, 10 Oct 2019 17:28:31 +0000 (UTC)
Date: Thu, 10 Oct 2019 11:28:30 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Subject: Re: [PATCH 1/3] docs: fix some broken references
Message-ID: <20191010112830.11ce7007@lwn.net>
In-Reply-To: <b87385b2ac6ce6c75df82062fce2976149bbaa6b.1569330078.git.mchehab+samsung@kernel.org>
References: <b87385b2ac6ce6c75df82062fce2976149bbaa6b.1569330078.git.mchehab+samsung@kernel.org>
Organization: LWN.net
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_102833_230608_2B04A561 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Palmer Dabbelt <palmer@sifive.com>, linux-mips@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, linux-riscv@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-cifs@vger.kernel.org,
 Leon Romanovsky <leon@kernel.org>,
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
 Shannon Nelson <snelson@pensando.io>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 24 Sep 2019 10:01:28 -0300
Mauro Carvalho Chehab <mchehab+samsung@kernel.org> wrote:

> There are a number of documentation files that got moved or
> renamed. update their references.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>

I've applied this set, thanks.

jon

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

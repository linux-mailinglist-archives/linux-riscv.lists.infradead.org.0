Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB95591DB
	for <lists+linux-riscv@lfdr.de>; Fri, 28 Jun 2019 05:11:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QvN/fbXMZjqs4dwIdwdPUn1t3mmAH3TozFZkvJBpmY8=; b=MKtRTYyAigF4bD
	nyB3oKdR4gUrjO+0eJWVfGkmZ/RuYzGMPvFFfodoAqnIqsYocMjVL2PkKD9kysoVz5odQKqh/g66i
	PYgbLt8tyAPuV6CDqJT56y2KPubu5fQBefZM4BfwpU+eEfKlygtpmu0xa7V6sP0CB5m6G789pBFnO
	UZwNebJ6MOHK4e4uR7OnO3ACiwvKhd7ouvQ8RmtCzmNFT2Ln+4P58GMojpMAtQQmD8os146+Lfkbh
	gZymo6OwrsSo+lhEWvavzzaLyiZ72VEJ/7RM50odnxHPbKYY386x9QVbD8y/fJouric1Q2PIOuhcu
	CmzL1UbA47Zmvcco9XqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hghI4-0002NO-L5; Fri, 28 Jun 2019 03:11:09 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hghHy-0002Mf-P3
 for linux-riscv@lists.infradead.org; Fri, 28 Jun 2019 03:11:04 +0000
Received: by mail-io1-xd44.google.com with SMTP id k8so9481493iot.1
 for <linux-riscv@lists.infradead.org>; Thu, 27 Jun 2019 20:11:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=3an8xkdD/hzVPbbvgTnxXA33dOKRmSHUjpIJuQZqGvA=;
 b=JrDwtixMw/3IlOWIM41ySM9lxTxda7b5hi8+7ZSQSKlOM0qEsMmefPmS6lnIukM792
 rJLcpnxJPLBtyHdBTKEU95fMJyoTW6j4QVsPsrKb9+NdQdGHv53Y6VhcjdkHaMtGrfL3
 lB6U7omhyz445enMU2nMTV10DZ1ybovtuMYUlxBYFgoEZ3eDbK197yh16Yke5NZaRysG
 cJi/9IhaybCnP4SVuDjSeNurFbQS1LOiIB8jSb0swifI1V2dCqmBMSXPHm2iDX6as/UI
 a+tuuakpmXoGaF5jHPHtk25VaOpP9wD9bbaDBXRo258SCCQMvPo5Qn2d7huyxS0vY9Ri
 /7HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=3an8xkdD/hzVPbbvgTnxXA33dOKRmSHUjpIJuQZqGvA=;
 b=Fti3ntvTWomwJaBgoHdVTH8ePXSSvUnaiyf/JE/qNWhyMQyD6rJMY9kBZECLrcaUYb
 O/36AK2qLxZqOCAKxYHHJwrTylZB7TzaK6qwYX5aXWgidZnNNRnmKnMaxHGRaiPcslTf
 e5k3c3Y9UzBeoU2lTQ3Xty4EgenEr57PB5MbaSxHQUEfMELUJ5m0IejDsCTguB0U3nyM
 8ohPJT1SfsMv15W0S1WBIgAxzViY4gfZCfJeEGIgiBtqOCmNDTMJYqRtiIBP4sbrzyom
 TqXFdvAh3PZArX4XEDxGDMn1yHdAIPEpp/Ug3KGqc/pRP9OLcxVMUwynV62DHoZzt0Bu
 DNhA==
X-Gm-Message-State: APjAAAX7dXBy4DJCaBeo9PkzvaLXsgAKySJCkWv33yFWcLCA1wI4ORdK
 Qm3HLIcJroT61OZCXGbYEVtimA==
X-Google-Smtp-Source: APXvYqzzedYsmPMz6paqYM6clmX/4PiLCsiEE/jsoyj1Qo/J8MkgXEwQvtF7zSVFKDSYWMZk7TrDDQ==
X-Received: by 2002:a02:9a0f:: with SMTP id b15mr8932363jal.32.1561691460545; 
 Thu, 27 Jun 2019 20:11:00 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 a15sm813161ioc.27.2019.06.27.20.10.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 27 Jun 2019 20:11:00 -0700 (PDT)
Date: Thu, 27 Jun 2019 20:10:59 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Loys Ollivier <lollivier@baylibre.com>
Subject: Re: [PATCH 0/3] riscv: add SOC_SIFIVE config for SiFive specific
 resource
In-Reply-To: <1560799790-20287-1-git-send-email-lollivier@baylibre.com>
Message-ID: <alpine.DEB.2.21.9999.1906272006410.3867@viisi.sifive.com>
References: <1560799790-20287-1-git-send-email-lollivier@baylibre.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_201102_847304_EE3AE99E 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Loys,

On Mon, 17 Jun 2019, Loys Ollivier wrote:

> Following is a patch series that adds a SOC_SIFIVE config.
> The purpose of this config is to group all the code specific to the SiFive
> architecture such as device tree and platform drivers.
> 
> The initial thought/discussion came from [0].
> 
> [0] https://lore.kernel.org/linux-riscv/20190602080500.31700-1-paul.walmsley@sifive.com/

Thanks for giving us a good start here.  Queued for v5.3 with Palmer's 
Reviewed-by:s.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

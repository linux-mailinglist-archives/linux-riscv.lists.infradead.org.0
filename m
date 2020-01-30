Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B95314D54F
	for <lists+linux-riscv@lfdr.de>; Thu, 30 Jan 2020 04:00:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uKb3WAne3o626R13j0KGx5gQcaaEMxZkLrCqKcu4ots=; b=RSa+6t3EcZlmNExT/gYaUUtAg
	aS9sBN9YfoFugP43vetxloiagdiXaPkdb/F+K6xx/pWs/OFOjzhnhlNf/EykAGXQVPgQB5ZCaIM90
	yWF8YOGod+Gn+2quxWvBOS2/XYe5xG7ZeKJlEfpad9mKKiyfk0vhhZFz4CFoMXKNiPT+arAO85lN0
	RBhfa6o87fMxxaOTJ7nddLraUZpuiU9gR0UdzXOevDb6CJjdQGbDc41O0E/m8sQjn/hV8YSXMaBPj
	QtTNC/n+ETZD4CHTh3gV/GY265U0Io9vNve127Sas8Si+FwFq9VErJ2bZa0GDmdAQUEXhZ7sDo2dZ
	Z0YgPPo5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix04c-0002tj-8e; Thu, 30 Jan 2020 03:00:54 +0000
Received: from utopia.booyaka.com ([74.50.51.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix04Y-0002tD-Cr
 for linux-riscv@lists.infradead.org; Thu, 30 Jan 2020 03:00:51 +0000
Received: (qmail 29345 invoked by uid 1019); 30 Jan 2020 03:00:44 -0000
Received: from localhost (sendmail-bs@127.0.0.1)
 by localhost with SMTP; 30 Jan 2020 03:00:44 -0000
Date: Thu, 30 Jan 2020 03:00:44 +0000 (UTC)
From: Paul Walmsley <paul@pwsan.com>
To: Carlos Eduardo de Paula <me@carlosedp.com>
Subject: Re: Error on loading some network Kernel modules
In-Reply-To: <CADnnUqfhxWN=cyyr0QQyKrrO13LuDFS9NTqOLwm10CnwB3sDXA@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.999.2001300259070.23963@utopia.booyaka.com>
References: <CADnnUqfhxWN=cyyr0QQyKrrO13LuDFS9NTqOLwm10CnwB3sDXA@mail.gmail.com>
User-Agent: Alpine 2.21.999 (DEB 260 2018-02-26)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_190050_515961_C2A7BE52 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: vincent.chen@sifive.com, linux-riscv@lists.infradead.org,
 Romain Dolbeau <romain.dolbeau@european-processor-initiative.eu>,
 Aurelien Jarno <aurelien@aurel32.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 28 Jan 2020, Carlos Eduardo de Paula wrote:

> I currently run stock Kernel 5.5.0-rc7 on my Unleashed board with most
> network features I need baked into the kernel instead of modules.
> 
> I tried building a kernel with these network features as modules but
> when loading some of them I got this error:
> 
> root@unleashed:~# uname -a
> Linux unleashed 5.5.0-rc7-dirty #4 SMP Fri Jan 24 18:16:43 -02 2020
> riscv64 GNU/Linux
> 
> root@unleashed:~# modprobe br_netfilter
> [  139.290533] br_netfilter: target ffffffe0000422d8 can not be
> addressed by the 32-bit offset from PC = 000000003dfd6deb

This is a known issue:

https://lore.kernel.org/linux-riscv/1572281840733.3517@european-processor-initiative.eu/

https://lore.kernel.org/linux-riscv/20191029105055.GA20736@aurel32.net/#r

Vincent is looking into it and I expect there will be a fix soon.


- Paul


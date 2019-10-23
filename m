Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE62E0F8D
	for <lists+linux-riscv@lfdr.de>; Wed, 23 Oct 2019 03:07:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iPsj//HkQoWWdms2X5PLnJOmdbuERxpxR05pDKP3j64=; b=umcNUDOVDLTyc5
	eka5U6hjJ8qmgmx68WsMzZxT6fha8k7o4VpZm/t20Tv6eNs2ZMYRG8DczS+fwGxYVyYH+cBiLzBC5
	els34SLbzFgFT2pJmcZOn/rz9BTs8N1YX8CGYYIb8C5iK5wkse7pJSSyLzlnv7wARZaeUnMX/7Pqw
	BVKGN9hohAtfN8JCI4Gemup96XXosxN0dzQiRjta3U3RLxWMYyQXZjFh0XDu4x4tESrNQrZTGUw4V
	J+gQ7L0ZSWNrjR2AOCiP75bXIgVfInKb5QXs/1D9LR1Sjuh+7Y2I6pYhghMaITGP43v0UtNwQhGo3
	7G3QBHOWXH7BPea10dVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN57D-0001SQ-9p; Wed, 23 Oct 2019 01:07:07 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN579-0001Rf-QC
 for linux-riscv@lists.infradead.org; Wed, 23 Oct 2019 01:07:05 +0000
Received: by mail-il1-x142.google.com with SMTP id a13so2955109ilp.1
 for <linux-riscv@lists.infradead.org>; Tue, 22 Oct 2019 18:07:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=HWO7yS040YN9ygzKwM7Iiq1eggk2WSVzMxvdmCJxTAY=;
 b=TYJlOMF6UdCArlzyrqcMSueIwlX2j0yf5xLo3vXieheL7oW7kiPQnQ9ckj+KFCE0/c
 6EulMnd58a5ZVy9efaKslK7lVo/8p6LnHFNfsWibqUY6aifbVFFr5npILT6RrhmFEcbE
 Pbh/vgCmjEkv3uOvr4yPU85VAbhWfrDF12yv3WTu3o17qlc0wrlSQRKv4tu9g2k4bVX+
 0T/84bgQkY82/S01VbjjRXcSl2lYgz9NG9w6bF6QfYb12lEuoIJdpj6LpR3P9B4DPYF6
 UorOanl4XGIRpwU3AJnlCu5ApAWlC029yLANfWbZb8GZc9g03AGs40kUTwcDYNLIfBnH
 zCUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=HWO7yS040YN9ygzKwM7Iiq1eggk2WSVzMxvdmCJxTAY=;
 b=Ipjq/wDcKiEMJm1u9K1z+KzI4WA2ziJ8ZsYyqof8zBes3aMsaMrY9aaSNMXb789Y58
 NnKp8vtJR+cxNFRRGYw9lxH4qrmNZYcXTLCKVPbsrycTFAmK7fFrwKCt/n5a9kuaSI1N
 E0EoFPlWyYVAaZlJj98vkFdiHdqEEI0m/BX8sFQ9w1eNB53tmeE4YMSfFh/PHPcx2zzh
 bO3aynOFjvFo5QuRZe0uWn5aVHKtP76cGzR3G/sykkyV4c9lVe90hMNnevi/goAjFl1A
 BQLV6Veu2UE7ph4/Il2DYkSkAj/jLIyTlI/0qocZD1zS/4gDw5thhJjXOdx3hKq4oZLt
 EzRQ==
X-Gm-Message-State: APjAAAWiP9Chg9Pk1CR07F8GmtkRp7Juug1Y0bYtq5gXY9poGAXIsiGh
 l8eiHbDuy4/SpmYoZOhHiQeQLw==
X-Google-Smtp-Source: APXvYqxV/TMbIFPWC+V5RaBuYoBsRlkm6Ti6k/ihWCnbo14PsG+UHmULY2sHqCNrLdwP+b7P+DoMdg==
X-Received: by 2002:a92:5a9b:: with SMTP id b27mr34644602ilg.180.1571792819781; 
 Tue, 22 Oct 2019 18:06:59 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id d17sm917352ioe.31.2019.10.22.18.06.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 18:06:59 -0700 (PDT)
Date: Tue, 22 Oct 2019 18:06:57 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Alistair Francis <Alistair.Francis@wdc.com>
Subject: Re: [PATCH v2 2/2] RISC-V: defconfig: Enable Goldfish RTC driver
In-Reply-To: <17db4a6244d09abf867daf2a6c10de6a5cd58c89.camel@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1910221751500.25457@viisi.sifive.com>
References: <20190925063706.56175-3-anup.patel@wdc.com>
 <mhng-edb410db-fdd1-46f6-84c3-ae3b843f7e3a@palmer-si-x1c4>
 <MN2PR04MB606160F5306A5F3C5D97FB788D900@MN2PR04MB6061.namprd04.prod.outlook.com>
 <alpine.DEB.2.21.9999.1910221213490.28831@viisi.sifive.com>
 <17db4a6244d09abf867daf2a6c10de6a5cd58c89.camel@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_180703_860201_C4E2A764 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "anup@brainfault.org" <anup@brainfault.org>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "hch@infradead.org" <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 "palmer@sifive.com" <palmer@sifive.com>, "rkir@google.com" <rkir@google.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 22 Oct 2019, Alistair Francis wrote:

> I think it makese sense for this to go into Linux first.
> 
> The QEMU patches are going to be accepted, just some nit picking to do
> first :)
> 
> After that we have to wait for a PR and then a QEMU release until most
> people will see the change in QEMU. In that time Linux 5.4 will be
> released, if this can make it into 5.4 then everyone using 5.4 will get
> the new RTC as soon as they upgrade QEMU (QEMU provides the device
> tree). If this has to wait until QEMU has support then it won't be
> supported for users until even later.
> 
> Users are generally slow to update kernels (buildroot is still using
> 5.1 by default for example) so the sooner changes like this go in the
> better.

The defconfigs are really just for kernel developers.  We expect users to 
define their own Kconfigs for their own needs.

If using the Goldfish code really is what we all want to do (see below), 
then the kernel patch that should go in right away -- which also has no 
dependence on what QEMU does -- would be the first patch of this series:

https://lore.kernel.org/linux-riscv/20190925063706.56175-2-anup.patel@wdc.com/

And that should go in via whoever is maintaining the Goldfish driver, not 
the RISC-V tree.  (It looks like drivers/platform/goldfish is completely 
unmaintained - a red flag! - so probably someone needs to persuade Greg or 
Andrew to take it.)

Incidentally, just looking at drivers/platform/goldfish, that driver seems 
to be some sort of Google-specific RPC driver.  Are you all really sure 
you want to enable that just for an RTC?  Seems like overkill - there are 
much simpler RTCs out there.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

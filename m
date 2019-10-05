Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED742CC975
	for <lists+linux-riscv@lfdr.de>; Sat,  5 Oct 2019 12:54:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2szvcygvLjO3508Ugt0SaXY1sBaxg6wHeFmtkRXwDvk=; b=B0nyq+eNkPY/A9
	21/NmeetbVMnb8+lHTzs7I60RwZBEeTBoDPPp/HVwSk7Vij0r5BA3jkxBuT1T1hK/dFjxN9yEpZJo
	ftir7967ndL1hxSoLxKDGSekYJo99Pk+3Me22Min8jJqg0DGX5iNCjNAwyBx4R2mo3KxEz6xRAy6B
	oJCYYj6Foe/Uq9UupL3gZlE60Dcp5nJHcLDb2UOA1D0qLNuDyccuoGNd+aqmf4Ze1gxzgVQYYNvEq
	oxYmawsmwn0y77DUdE0Suk8ivu29k517qSknnxP9bAC7afOoFXNpxEH0vtOtLI3pzEKVcS9W9JRjB
	v4nW6dUO9OMHe/YK9uXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGhi6-0001Y3-1U; Sat, 05 Oct 2019 10:54:50 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGhi1-0001WX-RU
 for linux-riscv@lists.infradead.org; Sat, 05 Oct 2019 10:54:47 +0000
Received: from [2a01:e35:2fdd:a4e1:fe91:fc89:bc43:b814] (helo=ohm.rr44.fr)
 by hall.aurel32.net with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <aurelien@aurel32.net>)
 id 1iGhi0-0006hZ-C8; Sat, 05 Oct 2019 12:54:44 +0200
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.92.2)
 (envelope-from <aurelien@aurel32.net>)
 id 1iGhi0-0002MJ-17; Sat, 05 Oct 2019 12:54:44 +0200
Date: Sat, 5 Oct 2019 12:54:44 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: Atish Patra <Atish.Patra@wdc.com>
Subject: Re: Fail to bring hart online on HiFive Unleashed
Message-ID: <20191005105444.GB22188@aurel32.net>
References: <20191003200735.GA26760@aurel32.net>
 <73a9ba9fd6c29075209a61660137fb4b899f7ff2.camel@wdc.com>
 <20191005102541.GA22188@aurel32.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191005102541.GA22188@aurel32.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_035445_887785_E1002E3D 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:bc8:30d7:100:0:0:0:1 listed in] [list.dnswl.org]
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2019-10-05 12:25, Aurelien Jarno wrote:
> Hi,
> 
> On 2019-10-03 23:13, Atish Patra wrote:
> > On Thu, 2019-10-03 at 22:07 +0200, Aurelien Jarno wrote:
> > > Hi all,
> > > 
> > > When it happens, the kernel logs contain:
> > > 
> > > > [    0.049851] smp: Bringing up secondary CPUs ...
> > > > [    1.082530] CPU2: failed to come online
> > > >  [    1.086267] smp: Brought up 1 node, 3 CPUs
> > > 
> > 
> > The log is aligned with the outcome. CPU2 never came up within 1 second
> > for some reason. How often do you see this ?
> 
> It happens about 80% of the time.

Some more statistics. The missing hart is always the one used by OpenSBI
and I guess u-boot. It always fail when OpenSBI uses the hart 1, 2 or 3.
It never fails when OpenSBI uses the hart 4.

-- 
Aurelien Jarno                          GPG: 4096R/1DDD8C9B
aurelien@aurel32.net                 http://www.aurel32.net

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

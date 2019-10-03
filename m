Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 776D9CAFC3
	for <lists+linux-riscv@lfdr.de>; Thu,  3 Oct 2019 22:07:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S9rKtxf1fUAUJ4jr+/wKNr387b7tFQapT04Uf8OmJyI=; b=nGVd7ndgvmXE6I
	fmFfhU8lMJdoClLmgLqEFpPYqabSexLfNVFIUJym8xhfrdryzQbz8dxuoMIBZBEZVP+5lqSwj04q8
	626y0U6CM5gfE/g8CggUDOG87YQeybdFDoao6c5j6adOKdsgrvmj2nyn/Up1PT3GTFDMMPe1vRfTP
	B0VtQ2/oB9UOz81aVJ+802KQ/+yFCFDmYxliAaEknVbglE2HmV5mdPYtRj7aE7SYnly/lZTiSR0+D
	mhMkgttTj6hIG2vcmb+0oaCQ9xYwj/CERJ1A4vqb4qCrMAFOC5Wmbjk/Wd1KmQ0szTb2kToleQLS4
	mQ5YB1kIg5EcgyonUTQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG7O8-0004uj-9H; Thu, 03 Oct 2019 20:07:48 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG7O4-0004td-M3
 for linux-riscv@lists.infradead.org; Thu, 03 Oct 2019 20:07:46 +0000
Received: from [2a01:e35:2fdd:a4e1:fe91:fc89:bc43:b814] (helo=ohm.rr44.fr)
 by hall.aurel32.net with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <aurelien@aurel32.net>)
 id 1iG7Nv-0004zd-Pd
 for linux-riscv@lists.infradead.org; Thu, 03 Oct 2019 22:07:35 +0200
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.92.2)
 (envelope-from <aurelien@aurel32.net>) id 1iG7Nv-0000Rw-FP
 for linux-riscv@lists.infradead.org; Thu, 03 Oct 2019 22:07:35 +0200
Date: Thu, 3 Oct 2019 22:07:35 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: linux-riscv@lists.infradead.org
Subject: Fail to bring hart online on HiFive Unleashed
Message-ID: <20191003200735.GA26760@aurel32.net>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_130744_721703_C9826547 
X-CRM114-Status: UNSURE (   3.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:bc8:30d7:100:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi all,

I have just upgraded the bootloaders and kernel on an HiFive Unleashed
board to:
- OpenSBI v0.4-50-g30f09fb =

- U-Boot 2019.10-rc4
- Linux v5.3.2

Most of the time, the kernel only brings online 3 of the 4 RV64GC harts:
| # getconf _NPROCESSORS_CONF
| 4
| # getconf _NPROCESSORS_ONLN
| 3

This can also be seen in /proc/cpuinfo:

| processor       : 0
| hart            : 1
| isa             : rv64imafdc
| mmu             : sv39
|=A0uarch           : sifive,u54-mc
|
| processor       : 1
|=A0hart            : 2
| isa             : rv64imafdc
| mmu             : sv39
| uarch           : sifive,u54-mc
|
| processor       : 3
| hart            : 4
| isa             : rv64imafdc
| mmu             : sv39
| uarch           : sifive,u54-mc

When it happens, the kernel logs contain:

| [    0.049851] smp: Bringing up secondary CPUs ...
| [    1.082530] CPU2: failed to come online
|=A0[    1.086267] smp: Brought up 1 node, 3 CPUs

I have also seen the issue with CPU1 but not with CPU3 and CPU4 (might
be a statistical effect).

Any idea what could be the issue?

Thanks,
Aurelien

-- =

Aurelien Jarno                          GPG: 4096R/1DDD8C9B
aurelien@aurel32.net                 http://www.aurel32.net

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

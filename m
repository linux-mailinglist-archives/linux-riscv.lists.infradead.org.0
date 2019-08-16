Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CBBE8FF19
	for <lists+linux-riscv@lfdr.de>; Fri, 16 Aug 2019 11:35:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=EZ9uvajjiZcXcMACX4jNg867EkeNMAiAeYCGSJRNzWQ=; b=CKn
	joQWnN9UbXojSy5614d8hQERbVvuwEBD9QoUnXVA4TWNVDx8s8bZ+xeZ1SK2ej5Lti4jbGT6NC1Hb
	WYpOFS02JPmkaSWifT77fMKgkhfj9sa42k6CI9cP5QwMXMSIn6ZqZ43ITHs4UUU10dAFH351VLcfb
	lVIc/IHZESAYmZA8mYTxoGaqtz/6EOKnD1ERRu/XuQCMyDSxc4K92E09vNj16sBs1lFR3RXxMiMPP
	6qqomXHuvoRce8JrdoCux8siPml9bFQXRerHiGnI3OrY7Q4SvXDq2kc85O/T88pZSgU3+q9loQsVC
	V8DIVqMbOU1omUZYVXI345zR+OnTArQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyYdA-00023V-JY; Fri, 16 Aug 2019 09:34:44 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyYd6-000234-Si
 for linux-riscv@lists.infradead.org; Fri, 16 Aug 2019 09:34:42 +0000
Received: by mail-io1-xd42.google.com with SMTP id o9so4942992iom.3
 for <linux-riscv@lists.infradead.org>; Fri, 16 Aug 2019 02:34:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=xYf63wGyYZ0P33tYACECzOvMo44w4KSbfvu918BbbKw=;
 b=dyKs6edj+IqSfD9KUGW3tyNuLaubZYCeaoK4xskqYEJP8I3l4RNVZGwgP2rgIXAF5w
 CKtT7SCS5Tb/FfQoKApvXGDmiUYb45fF1/eFD3yiSyPvJh8GV5sdR9mm9hYZgsdIPeyE
 fXB74IiAYfWsXIUGx67An7A9SHj8JDw05yDC2fIxa7mg/ewsI8CbnT3oilxFlbCX0auO
 z58z8eJOMV9JZYNGCbFK9hF3clzNmoecLXNbbEJyGPC2GP2i6Oq12a5bPFdmQqaW7oM2
 /oMOG9XVu08FaO2yVD43/baPhpK+hP3KiZPN1MHD/NUo/pY7ces3C9WtKqlBxyc+Z4Zl
 5NBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=xYf63wGyYZ0P33tYACECzOvMo44w4KSbfvu918BbbKw=;
 b=oS49ucizttAbOasC8/bAwNXVPUYpk6l4r3uhQTxnRCc5UiCq05ucIl21HCs+ZC2JS7
 t5ZY561V57u0nE8YwAeEJYwRA2syaaf3TvHwuxbduAZmx5MT4NhQQtEBbU6vNn1twrxN
 cNWYkwWf+tinLVyc1BjFEJFAYlwY/X4NeothejQ35LUTj2entxSIn3uxiOpyzm5OLmUo
 ie5Gg4R4ZjGBuRpCE3o39Ydub9tZWzrvtDkeDRnmjWytfoyrmYa3INtI5yd83TPSDaMM
 FgyhjZhDX/pDY5Beb8Odx6I65CEaxuicECMlJEoVQffHF0dYNIlbvXG8F51EnZK+TKv+
 /6gA==
X-Gm-Message-State: APjAAAWrVe/GZ+3m21fVaHIGVNFaMKHEo9Ko7D9PqAP7hgOQsfVhvVza
 1e1Mk1DyS/8eeEiiiFvbJAAg2UhHRuHeebIYY5JogI+hxmE=
X-Google-Smtp-Source: APXvYqyaceWrW2YrpiVcesK/lcuRQEpzZ7JellYCkh384y8U1rEcHU9Z4Wt8Dn/rk25pga9CXiAV1XNbolt4Zc29Iys=
X-Received: by 2002:a02:a792:: with SMTP id e18mr8096080jaj.64.1565948078731; 
 Fri, 16 Aug 2019 02:34:38 -0700 (PDT)
MIME-Version: 1.0
From: satish kumar <gsatish.ldd@gmail.com>
Date: Fri, 16 Aug 2019 15:04:27 +0530
Message-ID: <CAK1XJzWoaJyQkbXU-hvBLKsUMdgSj7woJo0oAEdN_HDDu4q50Q@mail.gmail.com>
Subject: RISC V Kernel Decompressor symbols
To: linux-riscv <linux-riscv@lists.infradead.org>, 
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 Atish Patra <atish.patra@wdc.com>, 
 Paul Walmsley <paul.walmsley@sifive.com>, Anup Patel <anup@brainfault.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_023440_930207_87DB3D1B 
X-CRM114-Status: UNSURE (   3.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gsatish.ldd[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi all

I am trying  to find out the following symbols in RISC V kernel code
1. Kernel decompressor symbols in RISC V kernel, which are equivalent
to ZTEXTADDR, ZBSSADDR, ZRELADDR, INITRD_PHYS, INITRD_VIRT,
PARAMS_PHYS in ARM Arch.

2 .Kernel symbols in RISC V equivalent to PHYS_OFFSET, PAGE_OFFSET,
TASK_SIZE, TEXTADDR, DATAADDR, VMALLOC_START / VMALLOC_END,
VMALLOC_OFFSET in ARM arch.

3. Architecture specfic macros in RISC V equivalent to BOOT_MEM(param,
vio, io), BOOT_PARAMS,FIXUP(func), MAPIO(func), INITIRQ(func) in ARM
Arch.

Can you suggest me where will find the same , if RISC V is using
different kind of symbols/params for the same usage, what are names of
the same & where they are located.

Thanks & Regards
Satish G

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

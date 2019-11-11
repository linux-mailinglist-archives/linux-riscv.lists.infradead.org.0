Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFAD9F7880
	for <lists+linux-riscv@lfdr.de>; Mon, 11 Nov 2019 17:12:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=snb8mvLcy2Fd7FfUgjyEBsx/gRs860wobFTIsBWj9jE=; b=JCH9fqGr9f2tm/
	DhY06gfL2Wdf24kHqbA2F04Jtg8JR0BBibDyIR5t1prjU5tiT+PMpnmi8HwGhO+TH4qw1Zkukiemu
	ssoRMyus8sti4MNz+R1e+EN/kJ783x3Boel2zT9xTq8lDSCQv+SEaG8qvc3CogjE8h9ukGYcdDNSQ
	O5QmsUzfjT2agx1Lj3bGbgxG+1iYQoIfRu1mF6YZ5oyO9esTW35QlOT/yuxwsOdCyfZyc7SE1PGEb
	jnnayputQURU6QNOCX7uEy8LjfxrKXtrUGtCeZsUZZ30GTfo17SkvLL18ghIyas1BJPMJb/nGajPT
	DOwsLhFZc42gAaskgwQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUCIj-0006Ml-1r; Mon, 11 Nov 2019 16:12:25 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUCIf-0006MI-Ep
 for linux-riscv@lists.infradead.org; Mon, 11 Nov 2019 16:12:23 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 960D068B05; Mon, 11 Nov 2019 17:12:17 +0100 (CET)
Date: Mon, 11 Nov 2019 17:12:17 +0100
From: Christoph Hellwig <hch@lst.de>
To: Anup Patel <anup@brainfault.org>
Subject: Re: QEMU RISC-V virt machine poweroff driver
Message-ID: <20191111161217.GA19157@lst.de>
References: <20191107212408.11857-1-hch@lst.de>
 <CAAhSdy3SGAkOFMhx320KJdPDh6c=qcKqCZ=qrXNKBGtejpZwSA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAhSdy3SGAkOFMhx320KJdPDh6c=qcKqCZ=qrXNKBGtejpZwSA@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_081221_647095_BDB8BF8A 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Sebastian Reichel <sre@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 05:06:24PM +0530, Anup Patel wrote:
> We really don't need this driver. Instead, we can simply re-use
> following drivers:
> mfd/syscon
> power/reset/syscon-reboot
> power/reset/syscon-poweroff
> 
> Just enable following to your defconfig:
> CONFIG_POWER_RESET=y
> CONFIG_POWER_RESET_SYSCON=y
> CONFIG_POWER_RESET_SYSCON_POWEROFF=y
> CONFIG_SYSCON_REBOOT_MODE=y
> 
> 
> Once above drivers are enabled in your defconfig, make sure
> test device DT nodes are described in the following way for virt machine:

Oh well, that is a lot more churn than a just works driver, and
will also pull it dependencies like regmap which quite blow up the
kernel size.  But I guess that is where modern Linux drivers are
heading, so I'm not going to complain too loud..

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

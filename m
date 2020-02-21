Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52EDF167950
	for <lists+linux-riscv@lfdr.de>; Fri, 21 Feb 2020 10:23:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mOE+KesOvdjijEcLNrbxPMfwP7K1dANXdyUU8KzpIZg=; b=CnxHp/FbRnebCozu93na+Xn/Q
	q+5Gg+McpjEcP+s9if0V+zCSzRAi254MCtS/3ncgkUzqAoLCJv/m/CFw9quMHEzD7vCfuVinDjaBL
	Dy+FCKQtKdnLY02GCFBIofiCVxWgh0/LsE1ypngqUmZPWmUHfk9198hUjNAR4qoxFaGwW9EjJFzn8
	/rzuVm9bwux1cRhO0bMk1uWO5YdAqkLCA2qAURyXDPU0RbIs4csfk5WE3iAJUJhz/xJfYtfjKMd2/
	M1vqy22PN0vEJYg73DB2REWyXg+seAKDWav4wzYMrN3UqOsvmNSCXA0hWakKN2Dbwv9/BDo6pu60g
	3vy5s7VvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j54WX-00078I-0S; Fri, 21 Feb 2020 09:23:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j54WK-000706-Rd; Fri, 21 Feb 2020 09:22:54 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4986C20722;
 Fri, 21 Feb 2020 09:22:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582276971;
 bh=ALN0VHctPPGg0pxI3Em/Or50WMnH8i03K/5ZLFgljvs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VB4dS6ni6nuf+jC6BMCt6gKplNkZ3/m5PBW3FkqeN4wgkGtpqn1bKsDBuvTrJ40nU
 6u5Usn9f6Bb+NGwxZO6u6WWC0zmyIvY8frgCGmdSIdv9092Tc9Y8Xp9eXSIwjJ+A/a
 JDLU9Wrx30hZjTJymghhADO8Axxbu7RlmHBDelVo=
Date: Fri, 21 Feb 2020 09:22:43 +0000
From: Will Deacon <will@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Subject: Re: [PATCH] kbuild: use KBUILD_DEFCONFIG as the fallback for
 DEFCONFIG_LIST
Message-ID: <20200221092242.GA11448@willie-the-truck>
References: <CGME20200221085039eucas1p2b439c37eb04870cc020f452b7ad31929@eucas1p2.samsung.com>
 <20200216154502.26478-1-masahiroy@kernel.org>
 <e0212512-bc44-fc3a-a647-47eff86983b7@samsung.com>
 <CAK7LNAQqsLnZc4h_XEMifS2hX+E39-vxD-BL5C59Aj+TaQo+eA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAK7LNAQqsLnZc4h_XEMifS2hX+E39-vxD-BL5C59Aj+TaQo+eA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_012252_915901_B07401AE 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rich Felker <dalias@libc.org>, Linux-sh list <linux-sh@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Guo Ren <guoren@kernel.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux <sparclinux@vger.kernel.org>,
 "open list:SIFIVE DRIVERS" <linux-riscv@lists.infradead.org>,
 Vincent Chen <deanbo422@gmail.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Richard Weinberger <richard@nod.at>, X86 ML <x86@kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Marek Szyprowski <m.szyprowski@samsung.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Jeff Dike <jdike@addtoit.com>, linux-um@lists.infradead.org,
 Borislav Petkov <bp@alien8.de>, Greentime Hu <green.hu@gmail.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Nick Hu <nickhu@andestech.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, "David S. Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 06:18:50PM +0900, Masahiro Yamada wrote:
> On Fri, Feb 21, 2020 at 5:50 PM Marek Szyprowski
> <m.szyprowski@samsung.com> wrote:
> > This patch landed in today's linux-next (next-20200221) and broke arm64
> > builds:
> >
> > --->8---
> >
> > $ make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- defconfig
> > *** Default configuration is based on 'defconfig'
> > #
> > # configuration written to .config
> > #
> > $ make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- Image.gz
> > scripts/kconfig/conf  --syncconfig Kconfig
> > scripts/kconfig/conf  --syncconfig Kconfig
> > scripts/kconfig/conf  --syncconfig Kconfig
> > scripts/kconfig/conf  --syncconfig Kconfig
> > scripts/kconfig/conf  --syncconfig Kconfig
> > ...
> >
> > (endless loop)
> >
> > --->8---
> >
> > Reverting it fixes the issue:
> 
> 
> 
> My bad.
> 
> This is because arch/arm64/Makefile does not define
> KBUILD_DEFCONFIG.
> 
> 
> 
> I will drop it.
> 
> Sorry about that.

Thanks, Masahiro.

Will


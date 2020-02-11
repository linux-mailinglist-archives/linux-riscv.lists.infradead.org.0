Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5409D158BDC
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Feb 2020 10:27:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=t+QeGYCEkcUs6b5ZM+NOCwDbOmiMQnW8+LwY6bloPz4=; b=sltssc/O3AvYuZxQQtjL22Qkf
	odzMtRdhp0LJ3EORk2gfSx2/EkIovvdDNoF2rvMs/vBZiH/sbZKc24maNUANDj2Pci2uyuzL0N/VZ
	zNE1UrhqJnYAbwxU6yKzQuLO9PQBe69fqFbHQRaF89oq6Z84+/8F/0htOufFbVZBsOW0vMwkXBOb+
	YMczqsyjE184kQ7oz6TX+lNEXQRKujPGU1WZZCN1CTCEtDGOtHdl6ehZ2Fv8HCZOcqrQiZMoJijQN
	d8K7ncQdGVqBWuZEymEm+7Uc7nrfynpcEbvLPkhczK56LsamAIGyyapGyQWfgcAqULXe2kXvvchP3
	3KKDJ4jIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Rol-0002ak-Hd; Tue, 11 Feb 2020 09:26:55 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Roh-0002Zl-41; Tue, 11 Feb 2020 09:26:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=t+QeGYCEkcUs6b5ZM+NOCwDbOmiMQnW8+LwY6bloPz4=; b=qjHd2cY4lTS/cb7bo4SP21lEI
 sUw+WwOCTcr39efAZGJoSf5pc1rkF99mBPElJh5dxtxrVXkd5r8pZ35M3ZfVodX8d45wYDbdrWO0J
 obey6q5d1eoDdzy+zGQoBw5EdxokxL4V8Mqrm7+DwCQhVJE0SpExjvX1qu/Rr98SN6lpOpUPiz2SK
 Fo8muWV7WCBNkIipNrx1cXJrdbQhgjhUVCjm9k1TQTH0PBfFMstbJP/LB7eavJb67MdKLpZ/i7Fx+
 7xOdkDULV9Ftpxwe57kIuG/nvVpEp+3i9oni28P56FkXFFyOxHOLqnr33ssRmsiyeDJNxiWaPVYmm
 0QKe2yYMg==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:38850)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j1Rn0-0003iZ-Ul; Tue, 11 Feb 2020 09:25:07 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j1Rmi-0000Jw-RR; Tue, 11 Feb 2020 09:24:48 +0000
Date: Tue, 11 Feb 2020 09:24:48 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Christophe Leroy <christophe.leroy@c-s.fr>
Subject: Re: [PATCH V13] mm/debug: Add tests validating architecture page
 table helpers
Message-ID: <20200211092448.GI25745@shell.armlinux.org.uk>
References: <202002060619.wEOdAZU1%lkp@intel.com>
 <78d3ce6b-e100-2561-6b09-124c29731d1a@arm.com>
 <20200209205231.44d098f8749e88190b8ba10c@linux-foundation.org>
 <955229f7-f161-f720-0e75-a3163f63817d@arm.com>
 <aef1048f-68c4-d14f-e669-8f288ba9ac7a@c-s.fr>
 <20200210100200.GB25745@shell.armlinux.org.uk>
 <7cb3a5bb-eaea-a01c-4047-e3c000b7ad1d@c-s.fr>
 <20200210110639.GC25745@shell.armlinux.org.uk>
 <82317d50-57a2-ce84-7557-21635d57448e@arm.com>
 <aa540cd6-93a0-1be4-cdff-c9af43ed7d8e@c-s.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aa540cd6-93a0-1be4-cdff-c9af43ed7d8e@c-s.fr>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_012651_164082_9B68A2D6 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, uclinux-h8-devel@lists.sourceforge.jp,
 linux-m68k@vger.kernel.org, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 linux-mm@kvack.org, Paul Mackerras <paulus@samba.org>,
 sparclinux@vger.kernel.org, linux-hexagon@vger.kernel.org,
 linux-riscv@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-s390@vger.kernel.org, kbuild test robot <lkp@intel.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Max Filippov <jcmvbkbc@gmail.com>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>, Mark Salter <msalter@redhat.com>,
 Matt Turner <mattst88@gmail.com>, linux-snps-arc@lists.infradead.org,
 Ingo Molnar <mingo@kernel.org>, linux-xtensa@linux-xtensa.org,
 Kees Cook <keescook@chromium.org>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-alpha@vger.kernel.org,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>, linux-c6x-dev@linux-c6x.org,
 Mark Brown <broonie@kernel.org>, Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Dan Williams <dan.j.williams@intel.com>, Guan Xuetao <gxt@pku.edu.cn>,
 Vlastimil Babka <vbabka@suse.cz>, Richard Henderson <rth@twiddle.net>,
 linux-arm-kernel@lists.infradead.org, Chris Zankel <chris@zankel.net>,
 Michal Simek <monstr@monstr.eu>, kbuild-all@lists.01.org,
 Brian Cain <bcain@codeaurora.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Hansen <dave.hansen@intel.com>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>, Qian Cai <cai@lca.pw>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 06:33:47AM +0100, Christophe Leroy wrote:
> 
> 
> Le 11/02/2020 � 03:25, Anshuman Khandual a �crit�:
> > 
> > 
> > On 02/10/2020 04:36 PM, Russell King - ARM Linux admin wrote:
> > > There are good reasons for the way ARM does stuff.  The generic crap was
> > > written without regard for the circumstances that ARM has, and thus is
> > > entirely unsuitable for 32-bit ARM.
> > 
> > Since we dont have an agreement here, lets just settle with disabling the
> > test for now on platforms where the build fails. CONFIG_EXPERT is enabling
> > this test for better adaptability and coverage, hence how about re framing
> > the config like this ? This at the least conveys the fact that EXPERT only
> > works when platform is neither IA64 or ARM.
> 
> Agreed
> 
> > 
> > config DEBUG_VM_PGTABLE
> > 	bool "Debug arch page table for semantics compliance"
> > 	depends on MMU
> > 	depends on ARCH_HAS_DEBUG_VM_PGTABLE || (EXPERT &&  !(IA64 || ARM))
> 
> I think it's maybe better to have a dedicated depends line:
> 
> depends on !IA64 && !ARM
> depends on ARCH_HAS_DEBUG_VM_PGTABLE || EXPERT
> 
> The day arm and/or ia64 is ready for building the test, we can remove that
> depends.

Never going to happen as its technically infeasible, sorry.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up


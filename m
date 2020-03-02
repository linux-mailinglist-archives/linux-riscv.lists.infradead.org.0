Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4941755E9
	for <lists+linux-riscv@lfdr.de>; Mon,  2 Mar 2020 09:23:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cNjwUjeyqSUMReZ1hj8pk3fvMoKCAR8VkF8kU/CEAmI=; b=QkVk7+KkB2x6711V81E8Fefyq
	qIFIcLFjn5oEYWmEUUlCry1SRVOmLIQPdd09emZPmCwCJr/v0+yTTR6mRrUU7xrdpLP2F7y3fSBLB
	X5o6367oD2Zfp5DdNx3eGPBCuUEwODOwqDeUWp+VDoos+NjGaidioKDqBFMP2RDqbgH7obGDdeaVE
	GgjYI0OmMrjYsr56/rCAy16JCxapSat9lXAOIC6VSQ1QJztzdsQhbSl98FHPLi1jwDd6hCBS2c8uS
	8y8zzdKH786hmm7iYt2vaiPuhCb0E1ypcPGDsxiU7rjY92B2fY5WSwVti1ArSUSmZWugEj1wGSM2O
	WjfHOeagQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8gLw-0001KE-Tx; Mon, 02 Mar 2020 08:23:04 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8gLm-0001AM-2Y; Mon, 02 Mar 2020 08:22:55 +0000
Received: by mail-oi1-f195.google.com with SMTP id i1so9452460oie.8;
 Mon, 02 Mar 2020 00:22:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cNjwUjeyqSUMReZ1hj8pk3fvMoKCAR8VkF8kU/CEAmI=;
 b=gGWGdmCCUVV2NjdtY5+gCUa2PtjQQ0jgU2RZaq3b96JgyQ/M8B6uXA+R1jzjbqh5RH
 QtprIMZ4F8WtRFK2u2vmFiKsbAu7w+fFCEaEl/U8XeN+uVucm4vDdT49wd8sLnyZXEu2
 HkGHTvVkA9z8MW5Tv8XZ8+MebFTy9jpQcmkffo0mtOMRjWXW7v4+WYWcM6o86zmcjXSq
 u1Y3aGe7Ieo9kfIsuaUlWfASTv+WPTQujK6OfhsPwLMBOH5+r65UOykTgPbqNSl4T7Eu
 u3pYQeL8HJAFFFtMdukpJH7HARnuj5H90pq7BVgUbNG5gMA2twe8mv2X9Q/wmr86hkFX
 cezQ==
X-Gm-Message-State: APjAAAVFV7mgsy85L+8LXz1OCrlOH4ijBO8T9Bz1tkWS3jjxEU+i7orv
 7Nmtco/PGxCqxAN6U1H2MxW1Z98OD2mTdLTcJjg=
X-Google-Smtp-Source: APXvYqxOxJxSBMm4mxQtyQaE+vbuwqLPCHyyR1SXxHSga4s6HjiXJaifhzoYpNbqmVOhS7uE1qHfAQr6kjTf+c7mdpQ=
X-Received: by 2002:aca:b4c3:: with SMTP id
 d186mr10506660oif.131.1583137372687; 
 Mon, 02 Mar 2020 00:22:52 -0800 (PST)
MIME-Version: 1.0
References: <1583131666-15531-1-git-send-email-anshuman.khandual@arm.com>
 <1583131666-15531-2-git-send-email-anshuman.khandual@arm.com>
In-Reply-To: <1583131666-15531-2-git-send-email-anshuman.khandual@arm.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 2 Mar 2020 09:22:41 +0100
Message-ID: <CAMuHMdUfm0X3cgEDzzF6fs0HQj83OPR=xVjQaT7uVDi2WbtHog@mail.gmail.com>
Subject: Re: [RFC 1/3] mm/vma: Define a default value for VM_DATA_DEFAULT_FLAGS
To: Anshuman Khandual <anshuman.khandual@arm.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_002254_116816_88BC08B5 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.2 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Rich Felker <dalias@libc.org>,
 "linux-ia64@vger.kernel.org" <linux-ia64@vger.kernel.org>,
 Linux-sh list <linux-sh@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mips@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Linux MM <linux-mm@kvack.org>, Guo Ren <guoren@kernel.org>,
 sparclinux <sparclinux@vger.kernel.org>,
 "open list:QUALCOMM HEXAGON..." <linux-hexagon@vger.kernel.org>,
 linux-riscv@lists.infradead.org, Jonas Bonn <jonas@southpole.se>,
 linux-s390 <linux-s390@vger.kernel.org>,
 arcml <linux-snps-arc@lists.infradead.org>, linux-c6x-dev@linux-c6x.org,
 Brian Cain <bcain@codeaurora.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 Parisc List <linux-parisc@vger.kernel.org>, Mark Salter <msalter@redhat.com>,
 Paul Burton <paulburton@kernel.org>,
 "moderated list:H8/300 ARCHITECTURE" <uclinux-h8-devel@lists.sourceforge.jp>,
 "open list:TENSILICA XTENSA PORT \(xtensa\)" <linux-xtensa@linux-xtensa.org>,
 Jeff Dike <jdike@addtoit.com>, linux-um <linux-um@lists.infradead.org>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Openrisc <openrisc@lists.librecores.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Guan Xuetao <gxt@pku.edu.cn>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Richard Henderson <rth@twiddle.net>, Chris Zankel <chris@zankel.net>,
 Michal Simek <monstr@monstr.eu>, Tony Luck <tony.luck@intel.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Nick Hu <nickhu@andestech.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, alpha <linux-alpha@vger.kernel.org>,
 nios2-dev@lists.rocketboards.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 "David S. Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Mar 2, 2020 at 7:48 AM Anshuman Khandual
<anshuman.khandual@arm.com> wrote:
> There are many platforms with exact same value for VM_DATA_DEFAULT_FLAGS
> This creates a default value for VM_DATA_DEFAULT_FLAGS in line with the
> existing VM_STACK_DEFAULT_FLAGS. While here, also define some more macros
> with standard VMA access flag combinations that are used frequently across
> many platforms. Apart from simplification, this reduces code duplication
> as well.

> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>

>  arch/m68k/include/asm/page.h       |  3 ---

For m68k:
Acked-by: Geert Uytterhoeven <geert@linux-m68k.org>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds


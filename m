Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A681C2E68
	for <lists+linux-riscv@lfdr.de>; Sun,  3 May 2020 19:41:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=E/mr9ZyjU5f7Vr/0eufu9euRQzca2mWViEzdzXjAhKM=; b=ANJSHk4N2bW4ncKyXTf6QJcXq
	PFKrq+Joc2gUPAREEhLsijgz1pSpekyswjez9wpqfJgcjults6VaFHQ+VzQFxxrbQ/k1pZiPmVRxT
	GhxzTgTwYLCAxby11JDgC2AZ80kTxQZMeCMSoxqR94Hwkw+fAPK9YKhtdEPaHawUwTUi3dsVrmG4h
	065UScV+6cQHE/h0awvMBTXUpyiSb88W8Q4IHW2Av9r0lU6YpqgAxFqwEOGTxyW2Fqbu8qom2F0/R
	cFn2oZhYeiS4G46FTZD6fSA18iYvLxscZ2E0JlLWifZWSqif91cK0xGDM0EBrwSOa6D3j13HuFZbv
	YuKz9pHTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVIca-0000TX-DL; Sun, 03 May 2020 17:41:44 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVIcW-0000Sl-S1; Sun, 03 May 2020 17:41:42 +0000
Received: by mail-pf1-x443.google.com with SMTP id v63so4393472pfb.10;
 Sun, 03 May 2020 10:41:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=E/mr9ZyjU5f7Vr/0eufu9euRQzca2mWViEzdzXjAhKM=;
 b=rAOPFuXgQJ2mpINJ4bZeTHDkrsZEQFsbwUGlrvdK6kp/tJs9EcLfnaWFpQLaMjvlTN
 PpGRnjbVlR/AVFM9AVMPY1HNoRLD+rgpHPyTxpKKlbrj05rCKcKZtY2qpz5bcSW3rVBO
 IocR5gWdH3gQT2RwWqhl/NTjprRC2CBth012R+d19kLQzVIHkQC7ljzq6SUBEAwz0CS8
 BnEP6HirMkFO0ICbg+hSwf+E0KnuOsGeUCXZA18VmuCvpAorlqiIGznMmafOkyr6R+Rc
 Q2PQDp8BGjLWDFmIAM1Oj/Qg5ff8e5fmuTqOOSGH41UE65MVi0GaoynoX/HwzIYTjpMy
 UfXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=E/mr9ZyjU5f7Vr/0eufu9euRQzca2mWViEzdzXjAhKM=;
 b=J4BzmFjGkg8WXvV/Q2K45+Edx2SqJou0+YyRc1DZh994PMl4g+C8LvUK1x8AXm/tM+
 QinLZxtKsHrfz+KtWJRIPnYTiUDfslHpkJWqzCOPcognehKjqUaa49Kw+Av/RRiZfaU0
 TeuevbwfH7lDz9MnpaV/47P7v12yjFxu2/ENqrYK3kVSOZpIoYsba0d/jAqNxJYfmAAV
 EfZkrXpSBk0uliAz+kpwlzzmF0+9oNukiWRzASTv7ZrHLYxBemfzN1jmgLup+vmBpIDr
 NtIOo4YJFHYl27lZz79HIdYRKYDOZ0TtccfZGIT/czKIg8dXbrHnCUXSlMZXBtFrzeme
 Jnqg==
X-Gm-Message-State: AGi0PuYaRmlEH+hNaqk9Xuh5DAZ5OkAgAbQyA9ZiMzVk1z63ki2aawFZ
 bQWdL/fJjNdr+kjZ4sDzUXg=
X-Google-Smtp-Source: APiQypKe5f9UYzoGgygyTvemhYSAj5fxly1sdtXiMOKzeUqRJYW2ZGXxYUOZH0ANd9Z0qgzTnrAvVw==
X-Received: by 2002:aa7:9093:: with SMTP id i19mr13366500pfa.152.1588527699823; 
 Sun, 03 May 2020 10:41:39 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id q97sm4982611pjb.7.2020.05.03.10.41.38
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 03 May 2020 10:41:39 -0700 (PDT)
Date: Sun, 3 May 2020 10:41:38 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Mike Rapoport <rppt@kernel.org>
Subject: Re: [PATCH v2 17/20] mm: free_area_init: allow defining max_zone_pfn
 in descending order
Message-ID: <20200503174138.GA114085@roeck-us.net>
References: <20200429121126.17989-1-rppt@kernel.org>
 <20200429121126.17989-18-rppt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200429121126.17989-18-rppt@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_104140_925621_E17DD97B 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 linux-doc@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, x86@kernel.org,
 Michal Hocko <mhocko@kernel.org>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Guo Ren <guoren@kernel.org>,
 Ley Foon Tan <ley.foon.tan@intel.com>, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, Greg Ungerer <gerg@linux-m68k.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, Baoquan He <bhe@redhat.com>,
 Jonathan Corbet <corbet@lwn.net>, linux-hexagon@vger.kernel.org,
 Helge Deller <deller@gmx.de>, linux-sh@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-csky@vger.kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Hoan Tran <Hoan@os.amperecomputing.com>, Mark Salter <msalter@redhat.com>,
 Matt Turner <mattst88@gmail.com>, linux-snps-arc@lists.infradead.org,
 uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
 Nick Hu <nickhu@andestech.com>, linux-alpha@vger.kernel.org,
 linux-um@lists.infradead.org, linux-mips@vger.kernel.org,
 Richard Weinberger <richard@nod.at>, linux-m68k@lists.linux-m68k.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Qian Cai <cai@lca.pw>,
 Greentime Hu <green.hu@gmail.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Stafford Horne <shorne@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, Michal Simek <monstr@monstr.eu>,
 Tony Luck <tony.luck@intel.com>, Yoshinori Sato <ysato@users.sourceforge.jp>,
 linux-parisc@vger.kernel.org, linux-mm@kvack.org,
 Vineet Gupta <vgupta@synopsys.com>, Brian Cain <bcain@codeaurora.org>,
 linux-kernel@vger.kernel.org, openrisc@lists.librecores.org,
 Michael Ellerman <mpe@ellerman.id.au>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi,

On Wed, Apr 29, 2020 at 03:11:23PM +0300, Mike Rapoport wrote:
> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> Some architectures (e.g. ARC) have the ZONE_HIGHMEM zone below the
> ZONE_NORMAL. Allowing free_area_init() parse max_zone_pfn array even it is
> sorted in descending order allows using free_area_init() on such
> architectures.
> 
> Add top -> down traversal of max_zone_pfn array in free_area_init() and use
> the latter in ARC node/zone initialization.
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>

This patch causes my microblazeel qemu boot test in linux-next to fail.
Reverting it fixes the problem.

qemu command line:

qemu-system-microblazeel -M petalogix-ml605 -m 256 \
	-kernel arch/microblaze/boot/linux.bin -no-reboot \
	-initrd rootfs.cpio \
	-append 'panic=-1 slub_debug=FZPUA rdinit=/sbin/init console=ttyS0,115200' \
	-monitor none -serial stdio -nographic

initrd:
	https://github.com/groeck/linux-build-test/blob/master/rootfs/microblazeel/rootfs.cpio.gz
configuration:
	https://github.com/groeck/linux-build-test/blob/master/rootfs/microblazeel/qemu_microblazeel_ml605_defconfig

Bisect log is below.

Guenter

---
# bad: [fb9d670f57e3f6478602328bbbf71138be06ca4f] Add linux-next specific files for 20200501
# good: [6a8b55ed4056ea5559ebe4f6a4b247f627870d4c] Linux 5.7-rc3
git bisect start 'HEAD' 'v5.7-rc3'
# good: [068b80b68a670f0b17288c8a3d1ee751f35162ab] Merge remote-tracking branch 'drm/drm-next'
git bisect good 068b80b68a670f0b17288c8a3d1ee751f35162ab
# good: [46c70fc6a3ac35cd72ddad248dcbe4eee716d2a5] Merge remote-tracking branch 'drivers-x86/for-next'
git bisect good 46c70fc6a3ac35cd72ddad248dcbe4eee716d2a5
# good: [f39c4ad479a2f005f972a2b941b40efa6b9c9349] Merge remote-tracking branch 'rpmsg/for-next'
git bisect good f39c4ad479a2f005f972a2b941b40efa6b9c9349
# bad: [165d3ee0162fe28efc2c8180176633e33515df15] ipc-convert-ipcs_idr-to-xarray-update
git bisect bad 165d3ee0162fe28efc2c8180176633e33515df15
# good: [001f1d211ed2ed0f005838dc4390993930bbbd69] mm: remove early_pfn_in_nid() and CONFIG_NODES_SPAN_OTHER_NODES
git bisect good 001f1d211ed2ed0f005838dc4390993930bbbd69
# bad: [aaad7401bd32f10c1d591dd886b3a9b9595c6d77] mm/vmsan: fix some typos in comment
git bisect bad aaad7401bd32f10c1d591dd886b3a9b9595c6d77
# bad: [09f9d0ab1fbed85623b283995aa7a7d78daa1611] khugepaged: allow to collapse PTE-mapped compound pages
git bisect bad 09f9d0ab1fbed85623b283995aa7a7d78daa1611
# bad: [c942fc8a3e5088407bc32d94f554bab205175f8a] mm/vmstat.c: do not show lowmem reserve protection information of empty zone
git bisect bad c942fc8a3e5088407bc32d94f554bab205175f8a
# bad: [b29358d269ace3826d8521bea842fc2984cfc11b] mm/page_alloc.c: rename free_pages_check() to check_free_page()
git bisect bad b29358d269ace3826d8521bea842fc2984cfc11b
# bad: [be0fb591a1f1df20a00c8f023f9ca4891f177b0d] mm: simplify find_min_pfn_with_active_regions()
git bisect bad be0fb591a1f1df20a00c8f023f9ca4891f177b0d
# bad: [c17422a008d36dcf3e9f51469758c5762716cb0a] mm: rename free_area_init_node() to free_area_init_memoryless_node()
git bisect bad c17422a008d36dcf3e9f51469758c5762716cb0a
# bad: [51a2f644fd020d5f090044825c388444d11029d5] mm: free_area_init: allow defining max_zone_pfn in descending order
git bisect bad 51a2f644fd020d5f090044825c388444d11029d5
# first bad commit: [51a2f644fd020d5f090044825c388444d11029d5] mm: free_area_init: allow defining max_zone_pfn in descending order


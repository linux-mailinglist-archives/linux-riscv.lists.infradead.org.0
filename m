Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 905EF1CDEAD
	for <lists+linux-riscv@lfdr.de>; Mon, 11 May 2020 17:15:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fHyqK5c5zSh/F9zuVQm2b9PUCHDtEHXO4T3KMIkEo3o=; b=CKrnmx3Wn+FZF793iaHSOoyzN
	zNcq/Jt8fae2AKl3gF/bsLXEAPutfvaIp0nqEVy1t2VyWPOLuPthLlYDrj02NANbUR7oH5MtR+WaO
	BTO2uIOruR8WFQPEZyyGs/0DkvTsTGxbVUn8RFkDdmqV6u+q03Uo3QysdatDZdIgVgspNmTWDLzZd
	BD4KvZRVRTXYsSYz5z35ptmrcTxmAM1I3EiF2ACoCDzKFsJbx33m4Mjuz1v+OrZVlIBfzZ4x4UY3t
	WobHR6hbF4xJo5b/X68r9PPHvsrRq7M64EknGlPVZJdb4HZKeu3fpLIUx0NPixm9fKPs3eQfnBKxi
	HZaqzKZGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYA9l-0004gN-OO; Mon, 11 May 2020 15:15:49 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYA9Z-0004XR-Ug; Mon, 11 May 2020 15:15:39 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 919CD68BFE; Mon, 11 May 2020 17:15:35 +0200 (CEST)
Date: Mon, 11 May 2020 17:15:35 +0200
From: Christoph Hellwig <hch@lst.de>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH 02/31] arm64: fix the flush_icache_range arguments in
 machine_kexec
Message-ID: <20200511151535.GC28634@lst.de>
References: <20200510075510.987823-1-hch@lst.de>
 <20200510075510.987823-3-hch@lst.de>
 <20200511075115.GA16134@willie-the-truck> <20200511110014.GA19176@gaia>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200511110014.GA19176@gaia>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_081538_139302_A1C8A6B6 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Roman Zippel <zippel@linux-m68k.org>, linux-mips@vger.kernel.org,
 linux-mm@kvack.org, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, linux-arch@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, linux-hexagon@vger.kernel.org, x86@kernel.org,
 linux-xtensa@linux-xtensa.org, Arnd Bergmann <arnd@arndb.de>,
 Jessica Yu <jeyu@kernel.org>, linux-um@lists.infradead.org,
 linux-m68k@lists.linux-m68k.org, openrisc@lists.librecores.org,
 linux-arm-kernel@lists.infradead.org, Michal Simek <monstr@monstr.eu>,
 linux-kernel@vger.kernel.org, james.morse@arm.com, linux-alpha@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 12:00:14PM +0100, Catalin Marinas wrote:
> Anyway, I think Christoph's patch needs to go in with a fixes tag:
> 
> Fixes: d28f6df1305a ("arm64/kexec: Add core kexec support")
> Cc: <stable@vger.kernel.org> # 4.8.x-
> 
> and we'll change these functions/helpers going forward for arm64.
> 
> Happy to pick this up via the arm64 for-next/fixes branch.

Please do, there are no dependencies on it in this series (I originally
planned to switch flush_icache_range to pass a kernel pointer + len
instead of the strange unsigned long start and end.  That still looks
very useful, but the series already is way too large, so I'm going to
defer that change for another merge window).


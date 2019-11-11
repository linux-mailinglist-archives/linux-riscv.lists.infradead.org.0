Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EEA7F7226
	for <lists+linux-riscv@lfdr.de>; Mon, 11 Nov 2019 11:32:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Ji4mbzbWdnWw7gsrReKtL4zS/YUleHsoxORAjjfK80=; b=P75wjuJBofI26A
	nvLJPDcbhyUOJTpSkOwPqq4cAvWGtSV8Oj8ttsRiGzVpcTYK6kBE7cbQ+/psDvJCO2pX7wCJznIXk
	nkWtq97a0pSTXE6QVungZFihtK5xTTwHbYYjrGnVHWnsYFc2pa+cnuhF6RAQGK8GUEobqI0wYiY+M
	4ekXyp5isjPeFbpCsKZTwLmklJGjPI6oO9aEy7EOJian+lGtawGk3YGVbCyx/8j3mHqWq+ChpLc+Y
	fzZCJftJgr+ntjDqIvVZxyJra5doxCAliRHVxg1kKLvyIX8nmEFrPUdpgb0AEDY7kTYxueO5tCb3/
	5eB4HTlVQOOpz6mSUunw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU6zP-0004n6-H5; Mon, 11 Nov 2019 10:32:07 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU6yj-0004jG-Ca; Mon, 11 Nov 2019 10:31:27 +0000
Received: from mail-qv1-f53.google.com ([209.85.219.53]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MVMuN-1iMjEK225v-00SLBi; Mon, 11 Nov 2019 11:31:23 +0100
Received: by mail-qv1-f53.google.com with SMTP id cg2so4636703qvb.10;
 Mon, 11 Nov 2019 02:31:23 -0800 (PST)
X-Gm-Message-State: APjAAAV1uHu6Q9+5m/uXVIpS6aLRZNpwjsRLO7wPNQ86ddVV0hzCMTr6
 87gTGnuJHk7ow0OQV4tIW5MidzrDPQyych2ZXgs=
X-Google-Smtp-Source: APXvYqxD4F/fwy7LIVnyFzyiMun+f+kScDaMuxMbPMHFdHwTAmNy4Oax48ObAzH1ZmZyCVG2W0sxl5/9Apu79krhc7g=
X-Received: by 2002:a0c:a9cc:: with SMTP id c12mr4561842qvb.222.1573468282069; 
 Mon, 11 Nov 2019 02:31:22 -0800 (PST)
MIME-Version: 1.0
References: <20191029064834.23438-12-hch@lst.de>
 <mhng-33ea9141-2440-4a2d-8133-62094486fc48@palmer-si-x1c4>
 <CAMuHMdVuDp_8UDeWv8tdPAH5JS84=-yfwZjOk-YQcoYKM9za+w@mail.gmail.com>
In-Reply-To: <CAMuHMdVuDp_8UDeWv8tdPAH5JS84=-yfwZjOk-YQcoYKM9za+w@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 11 Nov 2019 11:31:05 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2a7jwmAKhh3WsowCmvdQpsde5A5nz+3NXRn7amhwUxQg@mail.gmail.com>
Message-ID: <CAK8P3a2a7jwmAKhh3WsowCmvdQpsde5A5nz+3NXRn7amhwUxQg@mail.gmail.com>
Subject: Re: [PATCH 11/21] asm-generic: don't provide ioremap for CONFIG_MMU
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-Provags-ID: V03:K1:jKdc7SN7TlzrItssvWUahVJz3hDP5Cd0ZmKt98s8caMUYUIeg1a
 XJXJHK48OYgZsi5ooE+SHRbls5mfsDSjjzdKxqV+7TQ0haWZIl00SRFE+1uHGmmMSiQQEjk
 j4XE6F0yAlv0Od2pv/6TeFS/cNJKAI4Ztq4dRUpnq4tr/aod/9rdK+VMdZt8elxgT1Pk7Jn
 b+CGKaZnlfyAqgTx7I6VA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:9bijUwidQcU=:k4e4fsccf7b1kQBRUXFfF7
 2x6C2BMR87xGd6DUQHtPI68UisFEiQ3fhUeQ8z9c9f0LWWCM00QB+Q6QuX3q4oAMTsC17HKyE
 OS9U7UukFKmm19uDbnHKZfQmXJk51+VlZberOhVicpewkMPELJACdUHCAmPGR3V3e6fVRVJq8
 14ERn9U4sYWuG8ug7rEGcNxN7YRPcZgbngeeCgEhiKqqVZnKK0pCzpcUEOzOKz6vRBB5OfJDA
 l4UwCJ5roQnrlHNOfjtwMXdOmsofksZPZzV0yEuVt91QLmxq8X97yfgMfWfUoBvsU00+ctxho
 mobkd5fIjNBhz/CEyr/zwRCWk9VKbT95UUYTmHhKHgcHNu0XvvGNoRAMlRURXS13K7cWivOOb
 ADCx4ENJaBl5f2ZJi9ObpaxMYKMcXguX0qigZ1XXUDOVKOFjWKrBjpm5GEB9gFbWntqC3muuP
 n3LqZOhnhUGgCjLTs9yPPvTcUrsnqJIaSKeqI0WJ6ci9kU/jM//kc8xhn6qVDe8DqqJ4vl4yu
 IM53gbIB1IagmQ8ijskWfXjGAs1TubKWj0Jyqvn22RhLH59CdoBF237PzFTIqYm0PlzTKoXJw
 k1lTucluSyDydUojgOKhDG8f7fHj3mZeiP6QLPCufVDPYLEl7Nd5Nwy2pHtUO38YQ2NyQnWF2
 LFkyYjl5yjdRTdwV7F3JvL0QncNnzYQ/Xme/aIk3YFUpea4Xcx9nd+T3rvqgk1ufAx5SMqStT
 kf3OGv3Anm04oi+e3bn8VN7IiLiykMJ4vEIsZNL6CY714bZUdIHdOmxJxnWHA9u3umW42//MQ
 PMaCuSA5nXjKNjyAHTQ7XJ/OJoXhkbmUaFFiX4di26SFdmNnFMf4EdBdbmKzjRwv3E7LEmWvP
 uGNX4U82rMksGM+SEnQw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_023125_719658_C481EF63 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
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
Cc: "linux-ia64@vger.kernel.org" <linux-ia64@vger.kernel.org>,
 Linux-sh list <linux-sh@vger.kernel.org>, linux-mips@vger.kernel.org,
 Guo Ren <guoren@kernel.org>, sparclinux <sparclinux@vger.kernel.org>,
 linux-riscv@lists.infradead.org, Vincent Chen <deanbo422@gmail.com>,
 Christoph Hellwig <hch@lst.de>, Linux-Arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>,
 "open list:QUALCOMM HEXAGON..." <linux-hexagon@vger.kernel.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 arcml <linux-snps-arc@lists.infradead.org>, linux-xtensa@linux-xtensa.org,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Openrisc <openrisc@lists.librecores.org>, Greentime Hu <green.hu@gmail.com>,
 "moderated list:NIOS2 ARCHITECTURE" <nios2-dev@lists.rocketboards.org>,
 Guan Xuetao <gxt@pku.edu.cn>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Michal Simek <monstr@monstr.eu>, Parisc List <linux-parisc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, alpha <linux-alpha@vger.kernel.org>,
 MTD Maling List <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Nov 6, 2019 at 7:16 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Palmer,
>
> On Wed, Nov 6, 2019 at 7:11 PM Palmer Dabbelt <palmer@dabbelt.com> wrote:
> > It looks like the difference in prototype between the architectures is between
> >
> >     void __iomem *ioremap(resource_size_t, size_t)
> >     void __iomem *ioremap(phys_addr_t, size_t)
> >     void __iomem *ioremap(phys_addr_t, unsigned long)
> >     void __iomem *ioremap(unsigned long, unsigned long)
> >
> > shouldn't they all just be that first one?  In other words, wouldn't it be
> > better to always provide the generic ioremap prototype and unify the ports
> > instead?
>
> Agreed. But I'd go for the second one.

Right, phys_addr_t is the correct type here, resource_size_t is just a generic
type that is at least as long as any resource, and usually the same as
phys_addr_t, which is supposed to be used for physical addresses.

      Arnd

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

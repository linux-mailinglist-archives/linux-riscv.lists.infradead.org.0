Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 661B4F7254
	for <lists+linux-riscv@lfdr.de>; Mon, 11 Nov 2019 11:37:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hhvRdd1xLjf3zGAOqI0YY3YIYbEImd9E6reYWjm5J0k=; b=r2UKjRtdgWpOYF
	VknZK9dtuXFVjntsm72VYAZACNItMU4ndjOzYxYS8lJ9DdHBX0LIovp1dE7gsVdlhCy0xEHxlxoyc
	8V8jb+I7/DhrM7E7GHBTYrgBBX5EsiVnghj7FKw+BPNu1Fq1dcKbUMczjdN8GVwyFRE2aKPDRYIGD
	n8GdbzqnmFqQMtuEcn2LtlbH4l0YVFaqIJ6VbK4uorgEbR56goGSopE57yNYUxq26eQHQ95DtC2yl
	Ph5K7289TaY5jAEIZSi47d0CT/roU2Jn9BKP61/dUuU4SeHtbSlDB8ctTbyBuIKGHuPiLGKLhTvOG
	Is23P3NfdjXg3JPSiGVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU746-0007FP-PN; Mon, 11 Nov 2019 10:36:58 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU73r-0007Da-8g; Mon, 11 Nov 2019 10:36:45 +0000
Received: from mail-qv1-f49.google.com ([209.85.219.49]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MWRmF-1iNnXP0AYN-00XpAX; Mon, 11 Nov 2019 11:36:40 +0100
Received: by mail-qv1-f49.google.com with SMTP id cg2so4641828qvb.10;
 Mon, 11 Nov 2019 02:36:39 -0800 (PST)
X-Gm-Message-State: APjAAAXu36BrpYql+w3vgiGP2nWyAxigBq+F9ZkFKXIoFn/ocoMEM6v4
 7h5y26h57G81/0b894i6MnxyhCQhRU61ZM7MAxA=
X-Google-Smtp-Source: APXvYqwG9UjDI7BT4/zArLXJROi41Jfl0ozvIqGD8Z6sQp9Psd5jWuuWMeGtnWBnULPRq767xF7AmE4x/PyrFGraS9U=
X-Received: by 2002:a0c:a9cc:: with SMTP id c12mr4580319qvb.222.1573468598676; 
 Mon, 11 Nov 2019 02:36:38 -0800 (PST)
MIME-Version: 1.0
References: <20191029064834.23438-1-hch@lst.de>
 <20191029064834.23438-4-hch@lst.de>
In-Reply-To: <20191029064834.23438-4-hch@lst.de>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 11 Nov 2019 11:36:22 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3k2KRyhCy4OWJkToNBiw_mw0e_A=Ta6UANMMF3EXnhmA@mail.gmail.com>
Message-ID: <CAK8P3a3k2KRyhCy4OWJkToNBiw_mw0e_A=Ta6UANMMF3EXnhmA@mail.gmail.com>
Subject: Re: [PATCH 03/21] ia64: rename ioremap_nocache to ioremap_uc
To: Christoph Hellwig <hch@lst.de>
X-Provags-ID: V03:K1:Kw/w2SXZ9llr0PYVM5zwgWdveEKzv7xOcQoWhgQgBv6k1bp+rKH
 TkE+THeCYTVFmtTVIuKsogXQX8g6RB420RrRruUGz/yqPYGPgmEId71qaLX2+AYJZPVAHpE
 TwfbkiT2mNSU7m5Vi2nOaH022qnJJhLvFZi0/kK03opZvkYo5KKtnj8AX+K+XfrAhdE5NzU
 7ezF5iP+SiinKpwoUJTgg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:nEUIB33ED7M=:IL7V/vQ9Udnq1tGSwHcFnr
 nsWsOUlfOS/W92OmQbeSQJqPxo/I2WZ5QtKN+lsxCyAxFW/nQ7FeGA1lPftBM/hg15rM5YmBG
 HIQfOXWVuRxH31FSpWDD1Ke9N/2ZfQozMCWVEPvM+GIUaWs2+Cd+8JY30vXtgKNQ1FtCGTrm+
 bXYMQ+2qsK2b1G28NtbObeh6Wv99/sVZNLdcJKHLb34d2NFiPw8LHZUf5jPDlQw5mi6lLNhyo
 WWo+g7sp1VdO9QD0+cSR/gePMBmbBzLbOJYMv+LEq8X2QJTzpvVYOoX+y6T8cGL/NdIVCpNLw
 bUxBV5HRyudfrZpLBUDqzOzNj4pW4PoYzFGIdQXx4NuPUuF7HRoix3i/KsCBMLZqgC2NaVNIu
 dGyE15zj+QllF4l2CHWa5nr73W3ylHjHUOgCWVqk4gebYIC13cxkqAKctAYrYZ7kk3mk54VZg
 CLA91KZNOJvICCx9Cx9VrvgUVogXrXbkTWV3HRKkh4mLP+gNSVAl2hv8WJ/trrKpH1h3eD54R
 FtkiCEpgU8JjdIoW3jUSFgo0fmwjlqBIXYrLQQNXOr45ncPjnc+LZxHSn88R38lHYAP3vk7nu
 8AKZPG3ClnPiiYZBHliCvYFHWHAzZ+vvFHAL/g54oLfY/Ayh3YLVXX3bIKWOrhSGYWJF1KBJt
 0kk0tEyx2J5LmtEi/qRouU2OINgxfFRrvsS9m+RT1TrqroQItNI+qjsly4/VTTauV2WHzvr96
 +5KKf558NWEuy62P7VUQ9T3HGudpaMYh7KbSeQSvIPBblGPQGGD9AntWXEt5ALOcLU4myCFrr
 KODzJBJV6cOZQwz4g1QHhAQFkOQFNSBTQp9/ykCGbDe0g1szPOJD/UARqwKKpqq3827exEInm
 xcLbeHXirdaLR7ClqWM1A+xQEH71uf1RWcr1V+uPZO3ZH+D3Iv3gX+mPT89vO2pLvhPucf8j+
 YSgERX5x+KdRe+xn+pPNMdLD8mpF0scSVRsIbw4iaoQCKpAVgUC0W+OAUKtA6lbO1bJR4Q88v
 RaG60yX/f+SWEhugv65LHjC9MADrff8/ukUNlR3VhTgUVmDvo30reffwMCgKgijeAQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_023643_599916_A92917C0 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
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
Cc: linux-ia64@vger.kernel.org, Linux-sh list <linux-sh@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Guo Ren <guoren@kernel.org>, sparclinux <sparclinux@vger.kernel.org>,
 linux-riscv@lists.infradead.org, Vincent Chen <deanbo422@gmail.com>,
 linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>,
 "open list:QUALCOMM HEXAGON..." <linux-hexagon@vger.kernel.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 "open list:SYNOPSYS ARC ARCHITECTURE" <linux-snps-arc@lists.infradead.org>,
 linux-xtensa@linux-xtensa.org, linux-m68k <linux-m68k@lists.linux-m68k.org>,
 openrisc@lists.librecores.org, Greentime Hu <green.hu@gmail.com>,
 "moderated list:NIOS2 ARCHITECTURE" <nios2-dev@lists.rocketboards.org>,
 Guan Xuetao <gxt@pku.edu.cn>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Michal Simek <monstr@monstr.eu>, Parisc List <linux-parisc@vger.kernel.org>,
 linux-mips@vger.kernel.org, alpha <linux-alpha@vger.kernel.org>,
 linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 7:48 AM Christoph Hellwig <hch@lst.de> wrote:
>
> On ia64 ioremap_nocache fails if attributes don't match.  Not other
> architectures does this, and we plan to get rid of ioremap_nocache.
> So get rid of the special semantics and define ioremap_nocache in
> terms of ioremap as no portable driver could rely on the behavior
> anyway.
>
> However x86 implements ioremap_uc in a similar way as the ia64
> version of ioremap_nocache, in that it ignores the firmware tables.
> Switch ia64 to override ioremap_uc instead.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Good idea,

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

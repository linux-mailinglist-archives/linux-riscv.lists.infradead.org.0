Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF319F7243
	for <lists+linux-riscv@lfdr.de>; Mon, 11 Nov 2019 11:36:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QSH0u/Jwo6i+6E7MnKXa0IijW74B0fenmpw/mY9CZmk=; b=ZISh0zkraASy7e
	HJiih+Qab37oorMHZbIXJcNRvT+pdZK3RTYHZzG6ZN64HI2arIV1frW85yyLvM52tQrhXsCN8Y7+s
	jKpP9z+Vjsf/cudTjp+swlK3S0dXYb1KCvnHKYaa6SX8JPYKCxka6KIPjal18S2VzKuglhnb9H4QM
	Dtbnp7/VQj53Jmur3xtzx1VC6+VWy2SdQp01z9EbLMI1RFd0gcm0a01BlCC6WSB11SD3LFmxWqX16
	MuCRj/MKrKg0nXX23Xu0zjHrekrjTURRc13K56vEzpMQPsJ9r7lD2hhO1hcojDLF5PdBfi7/ct0GV
	j8/Dof+2FB0q0sYRT8vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU72n-0006qU-3Z; Mon, 11 Nov 2019 10:35:37 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU71P-0005dU-Cl; Mon, 11 Nov 2019 10:34:15 +0000
Received: from mail-qk1-f172.google.com ([209.85.222.172]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MWzXj-1iNFHN1G5B-00XL8n; Mon, 11 Nov 2019 11:34:08 +0100
Received: by mail-qk1-f172.google.com with SMTP id i19so10728169qki.2;
 Mon, 11 Nov 2019 02:34:07 -0800 (PST)
X-Gm-Message-State: APjAAAXeqEVa0qpQOFkvF0fqiDj7Ld/dsOn1PchOF7m/ZBazV4BIus9V
 AfQF5GTzbephRYVO/gYPRgCQE4fnBV5Ga0tUHvk=
X-Google-Smtp-Source: APXvYqzESzY62F14rsigxKLBXM91nKVjfO+E517KtV1rTG3fdeRCW+MOilAesC4Pz85XDKVkv4qCW/mxeD7p5CII2Ks=
X-Received: by 2002:a37:4f13:: with SMTP id d19mr9320005qkb.138.1573468446947; 
 Mon, 11 Nov 2019 02:34:06 -0800 (PST)
MIME-Version: 1.0
References: <20191029064834.23438-1-hch@lst.de>
 <20191029064834.23438-2-hch@lst.de>
In-Reply-To: <20191029064834.23438-2-hch@lst.de>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 11 Nov 2019 11:33:50 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3xk-mQic84Cv7CYhm2DqDCyu69+qH=i8M=JoE3xkpM=g@mail.gmail.com>
Message-ID: <CAK8P3a3xk-mQic84Cv7CYhm2DqDCyu69+qH=i8M=JoE3xkpM=g@mail.gmail.com>
Subject: Re: [PATCH 01/21] arm: remove ioremap_cached
To: Christoph Hellwig <hch@lst.de>
X-Provags-ID: V03:K1:7s94FvFGdDDs2wGAW4+qFKwxIo7MNglhvZZ4o15WArpb3FLR7h9
 Y1Z80ha/WcZPxJkBTHtdgFuXYEI8U2ciFfBs81OKtMOFP5rLFAZADWgBtwDmlXc9pslYHGA
 nDqYCZ5Ut0IGOvgoJ2VX3w149hNKHb4iUHBNfWBNSrQoSlOs/XyuaB01Oe5ypmaazGKuEBU
 qCI7E0S3QuvQJ0o+G6khA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ACr3tUk2G6s=:6PfJjmdel55Q2JqQG+mEBM
 1NhC6LulqgXqtdtFzSrFD1t0KlgF9B3+/xFTMp9/RFheCtiq05QrNJ7rFW3AnTy/nyDRGylo2
 3vbNhzXuyhZKE/zLf7vFsBmFIuNuU8Iw8eE5Yx2MyastjREgGUuAtp9JMHnen6UvPCX8pWSXS
 53rh9xjiEyItNmvmV42wyRmNT5mfZZSZqlV27bJ9pEqx8MLaOd+pKu903NyPrItaE+B3pPNnL
 VkZ/svAHr1z41Q2o3B53cq92U1g+0eoNrHqYi2WC3R3dX3Q1jXC62suYjVZR1Mcot7pTGYLIW
 Mu6MUT+GhSbmjmruAcAWgvrkrw2oTyZidgz4lmNrzk+Y33fKj0uZZ8WSCtofpcaLeqnqEOUwS
 osPFiPScpTU9bYXVJvVs0mBop62Es3G95YMx74BjBoM9bbPEBn0DEcSEKbBEjWjLUSyUlT2th
 jKKjsO3q+Z4Y9VYEmMBIT0l4iNPfScy/NJpwgSBhqMeO0a7ZtG6IDiVOyB7X5vwIrRR9FeUns
 FBxo0WO/QrEvYShK+mrjqRa5f3Lt2HSfoTRqdWwoEnAB3if4rrnkI23MrDg/doXoD0U/hbh1D
 OIIzf9Va58BifoRj7UfV0U2Ay7FSWTRhFNbBqzhtE5bVoor1oN4b0nq3nbjnG6JAmpLEQaE3Y
 VIa/AtkR9NLgMhgll/SZQylELYRzKhiVIESrEcl2kUIAs16sj/guJihGj3s7ySHf10eJ0e5Ia
 FQat9wyXd6lGB3/D6wkwHBYFO8/MSk2Y1YWc3AsJiclSQjyBSv6zXYPvyjdrqmYL28nhi+SZQ
 3dTPHgI7Vlkr6XZjhYSmON53uGs4m2viXo4XlF08f2EFLBfPj+g8nXoNPWvJZ+Q2aWwFOPklD
 QbkPxSfR71XBXDMcKrCL7j/QKdHw/dIzlLO6AazTRKAW5ejX/Nm5FIp6fM6surs+3bQvkZJzb
 LiMRtCs+SpmBn5eX1nucN9yke8R82aP9U9n6jfZ4U4NbA8/OUFJVH3Z5iaWss6b/A1tRbUbee
 h2oXyKJpCPr0+630YfOYnEArkBRfoBI7TQkbcJ86vdNwVOdj40r1ywLPpeaMgBpC3w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_023411_727067_0B0B932C 
X-CRM114-Status: UNSURE (   7.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
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
> No users of ioremap_cached are left, remove it.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

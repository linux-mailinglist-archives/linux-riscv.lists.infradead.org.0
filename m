Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6422F7181
	for <lists+linux-riscv@lfdr.de>; Mon, 11 Nov 2019 11:10:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Z+8B+t3GuV7v2gmYPFksGhNBNSkm2XDTO5iSbOeYS8=; b=qL2N8XJwSklUJL
	bV56Hva1z1QVmxwp5BgqD02q5dgLYkejjcw/1rJp04qrHmLOrqHBBmw5kZFZDdDZ3REjXLSVY3PiH
	LZ+6IR/6QXT4QeIFnNJvt81zQC10CWJdMRtGrpsm2rdd+h0N0AdeBM8WDl+K5JG6D2ElyzymPYc2h
	M+282XrRFwWwLFzUzdwqKSLvbJIC/e5AvR22PAo0d3tDdok2rhi0mbfrqQ6stfmXFZ2SHuN6T5GPv
	ASVY114+ivJbosfFhSQ6M1MvUfzAK5RpGCEou65uIHsRd/bRvoZ6x7PpX6Dbx0uP7HyXdvUTfjynH
	JGzh4YPKr3cgy9Q8b9Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU6ef-00054l-Es; Mon, 11 Nov 2019 10:10:41 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU6eR-0004to-Ng; Mon, 11 Nov 2019 10:10:29 +0000
Received: from mail-qt1-f178.google.com ([209.85.160.178]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1N6KMR-1hoCDI1u4f-016fjm; Mon, 11 Nov 2019 11:10:25 +0100
Received: by mail-qt1-f178.google.com with SMTP id o49so15061952qta.7;
 Mon, 11 Nov 2019 02:10:25 -0800 (PST)
X-Gm-Message-State: APjAAAWI/SJPAR5BTJja7Tcokwsf2epO6QM5fyMoZb+qtveVcHuit417
 rx4VI0sG5j2KRxlq5Krbz+4zF7uNexSDGkvfJ5c=
X-Google-Smtp-Source: APXvYqyqP0GEnKlLDcc3YXGxYPpIsc43oy+/l9orRIfJHYpq8HDGEADC0l7WhZk0kMzg516CeAScWIBjk4MnQDDCwV4=
X-Received: by 2002:ac8:1908:: with SMTP id t8mr24584774qtj.18.1573467024165; 
 Mon, 11 Nov 2019 02:10:24 -0800 (PST)
MIME-Version: 1.0
References: <20191029064834.23438-1-hch@lst.de>
 <20191029064834.23438-13-hch@lst.de>
In-Reply-To: <20191029064834.23438-13-hch@lst.de>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 11 Nov 2019 11:10:07 +0100
X-Gmail-Original-Message-ID: <CAK8P3a28UDPEP7Bqu_wEXsfwSpT-5i30STB2iX3RfxdvbfzrNQ@mail.gmail.com>
Message-ID: <CAK8P3a28UDPEP7Bqu_wEXsfwSpT-5i30STB2iX3RfxdvbfzrNQ@mail.gmail.com>
Subject: Re: [PATCH 12/21] arch: rely on asm-generic/io.h for default
 ioremap_* definitions
To: Christoph Hellwig <hch@lst.de>
X-Provags-ID: V03:K1:fQX32YRZ7MFYqktrGadEAUXdbqRuZ4SulAjtrqxyTp0DuPF/I4S
 ANIMFHovIsglz//xUx23TR904ba3Z2MIdcPzW4CyydXRFYrXBGQj0SlMj7tAAE4EHQ1qZUt
 DQUhK/C4bmAF+6NWq4k7sVyDrvD06BSbsm5s3Bwv6juBiqKvDc9xB+yq7mPHGBQdg8AX12I
 oTfmBvio7BFg5dsFP8Tyw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3v4ypQ8zeXk=:W6yi7Ju1qhjcxtjekngn8M
 tUSbvtWSmZYCXQw0V0SpoMCezGyjsY879/X4WA5KeTRDqPGTHX+bBxvnDK4AtxykFhS/yBcCz
 /v7BsAqKjbdm256T+9vKYTakd3KsoUguUpO8QAI0eYCU7wGuvPfBsNiNXUjMTCFKuZvCuBEfy
 +/Ncf4kwKV7xCHrf82pDI7GOKzLetXdAMGfbAZirutGVWRV2lK9/ou7ZIKFUDEuuptP123Nox
 W8fq5G6zovWGjROCwyrNMV5x2fq+gFh9xueJalURST9Xfxf5TZ1MFxeVIbJ4TCd6UgV4439ZV
 s5NDxjl8shqnp4aisTTOns9bzXgnLausYgEWZps/FREOo+4LtZnu3FeRuT/zw5GK5DHZXu9WV
 VCWPAjlAwJs3NdUPhfccna9/h0HHAwMZk9KMaVjlH6x2pAP3tafnJxTAzaUxM3QroWOyZOVdx
 xajoPqTAdNmxTM+zaEHANLnX1i9cJ1C9GHGHkhL4Bsa762kPK+/d1wh/JH2oOXGuc1iXPNlox
 D6SgSizKajDWfJYkeyLjr/afm2Vx/OPbsHs3ZC8FDhmjrzHFEE8Sx1m6wD+t1Hjjt2AYIgz0J
 0pJVsTkFwHRTtCqMOeRErw5cPD3PpZn6pa9Ruy/eF6yUzxduTpSCWFiVzgBlMhRB3eFcsVjXg
 hMgkgnjJLp1PMNZ6a6Fnl0fVod3ZnY2rzI3DhMdXoU45IrmqlDUeVtKjperyipG0Omc85PZzs
 +D5fW+yBqgQSyjT2conQ8mVsfTzPu5Owh0JWbB41VM3NUeSHrOuYoLpZQlCxnks10CmsGWFJF
 0XtJOebNOexrbpcHg5MZVIctaqJiMX/p4Izyt4h+UuKdjHAKK7MSaYFgFkHaUS/RVx+PYCA1L
 M6q9mxTAzh2zUik+hitQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_021028_062965_62E2A4E4 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
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

On Tue, Oct 29, 2019 at 7:49 AM Christoph Hellwig <hch@lst.de> wrote:
>
> Various architectures that use asm-generic/io.h still defined their
> own default versions of ioremap_nocache, ioremap_wt and ioremap_wc
> that point back to plain ioremap directly or indirectly.  Remove these
> definitions and rely on asm-generic/io.h instead.  For this to work
> the backup ioremap_* defintions needs to be changed to purely cpp
> macros instea of inlines to cover for architectures like openrisc
> that only define ioremap after including <asm-generic/io.h>.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E47F716F
	for <lists+linux-riscv@lfdr.de>; Mon, 11 Nov 2019 11:09:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0p/Vu2htVcyNtpMYPhMIAbtiea7NuWFj+kB7npM7/Ys=; b=VTX1Tj+c+s1WQ3
	DlYTyvVRZ2EkXZ1fR9I5yHlWvHNxz4I/yr7HLTQDqaG7xwsEVNqTR0jQL1HbCRvmX7HDf7nRgANO0
	N8ib2hOsW+Jd72Oa5wLG7lHTSepTSiYmTYKNYqNMtpPP1GbTzm2l+9gzysPPRAN5DUM58m9Cshvgl
	aBQLG6iupOC7kQl9EzEW17DIBtqhHpuZ4Cq2RMXPNaruhsvzHCAclu3doJyR/2TXVTFIVKTmog8f1
	cGUSiV2aXuLg8cEo/ZsBbKE3Ox3sEhaKSDNOC0Zmy8YKSxt6ALEsDKlSBIdsNCA3mCtf+ucwELJAS
	YVzOOm3PVSM49oaziwhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU6dc-000313-Nk; Mon, 11 Nov 2019 10:09:36 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU6dY-0002yo-Fh; Mon, 11 Nov 2019 10:09:34 +0000
Received: from mail-qt1-f182.google.com ([209.85.160.182]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MhClw-1hzybu0RoA-00eJP0; Mon, 11 Nov 2019 11:09:24 +0100
Received: by mail-qt1-f182.google.com with SMTP id o11so15010998qtr.11;
 Mon, 11 Nov 2019 02:09:22 -0800 (PST)
X-Gm-Message-State: APjAAAWv8iyxmQLIDiBQXlIhkgflGohJWLHtW4EliIEZKA/EDK8oaCG5
 CfqN35ml8WFWTRapvUY93fImXBgWBu/X1sRB1II=
X-Google-Smtp-Source: APXvYqwUFI9CNnIwrAVKasmsTd09tLHKshCq1NYJLSrtULcDmOA+h22x7/m2tzlDDqS3Yhkmt+6zqdhU/D75oBqf0Ro=
X-Received: by 2002:aed:3e41:: with SMTP id m1mr16150881qtf.142.1573466961656; 
 Mon, 11 Nov 2019 02:09:21 -0800 (PST)
MIME-Version: 1.0
References: <20191029064834.23438-1-hch@lst.de>
 <20191029064834.23438-11-hch@lst.de>
In-Reply-To: <20191029064834.23438-11-hch@lst.de>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 11 Nov 2019 11:09:05 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2o4R+E2hTrHrmNy7K1ki3_98aWE5a-fjkQ_NWW=xd_gQ@mail.gmail.com>
Message-ID: <CAK8P3a2o4R+E2hTrHrmNy7K1ki3_98aWE5a-fjkQ_NWW=xd_gQ@mail.gmail.com>
Subject: Re: [PATCH 10/21] asm-generic: ioremap_uc should behave the same with
 and without MMU
To: Christoph Hellwig <hch@lst.de>
X-Provags-ID: V03:K1:Q8h95G51LGJ+lEYcrVT1mVBUea8IcQ9erH4GpK287lhazEIjqVx
 fP5/Hmr9Z8fUJXDW9BX2tI3T0GXc8PBIt8SKT2xff1DNk/o1NHJnmpbdOML4INTQEzzpYt5
 xqkWqvP86f3z5WffbZ+79Hs+Tm3glF+cB0+IemNS/SWpM3zzk8XnGd/2o6EoavmRJP7p7Gc
 wsdc+4bcyovejoN9q/4gw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:fjmunqixS8A=:tPOToe43PB4w4u7CUTDKIq
 m1bdqRcsk9dsuqhBXaoEHetDB6dSvF21+y8LtHbTvG+5cPaYu5yFqfLpDDdSwCHObZqS+eGIW
 brWfxEtbJprKugXTZ+KxPquQiHCIiqWDPRQ3lJTTjHycTf6348F/VC3BfSqBuE8wnTZM6tTUk
 sY7JorQ2XAHogSHduJ/jDewUIuumelNB2ovaX3x7FAeTJhJrnWkELetSYDl+JETDJu2HrR4oz
 K9+s55kOv1kD5EPe294QVBQpQBvnlRQB1e6hsmwwB4WmQC6VwRkBFk9LB/Pmb+gG4MDo4YGZ5
 YaY7aqG7gK7tq+iDOy7i2GdAaxGxBkIbBwcBVJ8PI29TN2QZW10zq4Dd8p6jf+SIYhbnw7iaq
 iFQDA3byabVewETU5MKDBoJKfYpCAJ50hIU2hcyMpu/WOBr8JYpjQlvqOSVV6C1OGrX9tb99r
 KNcK/sqCmv18xhuVEZxYWE8MVPfyw9pXetJUhK5GrY/vtSJkLsB8xxBhuzPHNhEdXqUqSUivZ
 d5/fL5n3i4kKvxiL6eRGannSRis3yGI13D7BeGccNDds/3q8ics9gqVbQs5C0d/m8iuUBbaJU
 /zg68xsyPC64G8hZZ911DK1zoRBI40P974MIHMaMLd8wjIOIYHnDoljeO43a0sqIRyPvs5cQA
 0aVyGPFV4R5NmMTRe9x1HwvDiZtYZk5w0hAJlfNHxbP9mz9wC0FWRBhHMXXLbDbAkD+GPCHoo
 Sma5h+xjzqDC6zCfC96i3Ml0JgN7hjn/vTjeKNcnRM1Zgf6xJRMsP8iBgZyOB0ggjyq9yRnoV
 4r8pzbO/MdoTcRUOTQdtjjh8erRrQh+aSzuIt2GsDNK+NdWaHBTU55t3RHmvHCDtGFuFCuPSo
 cK58ximM9pqnO7SLukGQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_020932_841685_563614B6 
X-CRM114-Status: GOOD (  13.64  )
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

On Tue, Oct 29, 2019 at 7:49 AM Christoph Hellwig <hch@lst.de> wrote:
>
> Whatever reason there is for the existence of ioremap_uc, and the fact
> that it returns NULL by default on architectures with an MMU applies
> equally to nommu architectures, so don't provide different defaults.

Makes sense.

> In practice the difference is meaningless as the only portable driver
> that uses ioremap_uc is atyfb which probably doesn't show up on nommu
> devices.



> +/*
> + * ioremap_uc is special in that we do require an explicit architecture
> + * implementation.  In general you do now want to use this function in a
> + * driver and use plain ioremap, which is uncached by default.  Similarly
> + * architectures should not implement it unless they have a very good
> + * reason.
> + */
> +#ifndef ioremap_uc
> +#define ioremap_uc ioremap_uc
> +static inline void __iomem *ioremap_uc(phys_addr_t offset, size_t size)
> +{
> +       return NULL;
> +}
> +#endif

Maybe we could move the definition into the atyfb driver itself?

As I understand it, the difference between ioremap()/ioremap_nocache()
and ioremap_uc() only exists on pre-PAT x86-32 systems (i.e. 486, P5,
Ppro, PII, K6, VIA C3), while on more modern systems (all non-x86,
PentiumIII, Athlon, VIA C7)  those three are meant to be synonyms
anyway.

      Arnd

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

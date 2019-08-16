Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FADF8F8B5
	for <lists+linux-riscv@lfdr.de>; Fri, 16 Aug 2019 04:07:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=97LmymEkPDqIn1F+3ZUX6OG0gbB9YyiI9vOkgDt7MCw=; b=Pdj3WlEU+Ci1v4
	gjxIQ2xxBOTgsAe59ZMakI3AdLLOkHRC6nhTuP8aIA+r3l4v5Cd5Y+th4ogVDHfHEsANrV9sGwOi1
	vqx+aGNd3nGiagnevVPl7FyUGtfUJwjggsb4kjxu4x8W47vQjkqXP7tx+XyXyXwRL99O+sb/BEIOc
	HjKAH0NwEJ1ppn6wMUOUvMNdtkuxWhpA3Q+7/IfNkuG8/ulFoFDkWnhsFQpXzYYm/OXcxSYTjGawT
	7ZDwFrKtwvQGhE0J7mCXj01Iz+QGBWRxLeXraJq3Owl4Ivpv6QDUxruAhO/RKSiumwLqV93y+L7Io
	bgxNzLQs49KOhIAtzLbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyReE-0003Pl-AZ; Fri, 16 Aug 2019 02:07:22 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyReB-0003PN-ET
 for linux-riscv@lists.infradead.org; Fri, 16 Aug 2019 02:07:20 +0000
Received: by mail-wm1-x343.google.com with SMTP id f72so2800908wmf.5
 for <linux-riscv@lists.infradead.org>; Thu, 15 Aug 2019 19:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4t96VrJO/aS/379GpZWL86SzmnziIJmi9L5o4u6HMF4=;
 b=Vrg1MvRSi8MEcTXWax28fm0Y94Y7L5w+dEhHm7nUDN1z0jmBLy24d5m6CjB6CtBncW
 cwSehAxMSaXQkSvTDrT0bkZx8wgxMt450myd8vIxr61UpKOG7hJ78gwa36Qs8GCcxGn5
 /Cm2jQFdyB3LcbgB8kSa/5IqQ3L8KM3Z23Wf1UCneAopPqfQ6YaXBiLK2h9kb2eEmal4
 cA3i9k9b55mm6naet6z3jF7eiquU/CxjIcGGUMhyO4dHR6qDzP4egWjhYqlbfOpvT5QZ
 uBNQt0gRL27bLoYVNBFSiVCtMB8/v2XNg5+xD8ZUy9gYPozeLXlnUsComPwI+KJ2H6LD
 B0Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4t96VrJO/aS/379GpZWL86SzmnziIJmi9L5o4u6HMF4=;
 b=geI9MLmSLmLbtcg6xtOQoiMlRwTJUGCuz8m/YXZw1CpbBHEEx2FxFm9IW05iM9EyHU
 fwLKYTTpXsqRsqFwxWDA3XJmDTTo1KbIc+TtbJiPjUby9k1Tg50aPrsNH1j63bpkqYIJ
 zyf+xYAam4HzVT+4iU9PUu3oSmtpfH+P1oBW8Bth8g6V1PdSo5M1w725oGjerUcCLedx
 09lk9dicO28HG/3cLjeqRxDEF7rx7T1BgrN4ry5Pw0umeGXyQVpq5vy+JIJLYGqHTKPI
 aoKc0LYmVOIXPPptDXAr4p5ADzVuQgml7Asz5EHNZcaTCiMe35P7jW7VTjRauQK1iO8I
 roKQ==
X-Gm-Message-State: APjAAAUhS2T1vrPWR0QFYKy9Pl9lkA+sG8WGBfoIHG6X0WZAqJFEoodC
 LRryN/gKKBdjCVzmVtFq3illy9oCxZEx9b92Z937TKlgsOzbo08p
X-Google-Smtp-Source: APXvYqzaPRbihIfvjiZQdpb4iYG/ZGbwtATyK9eaeJCOhTmwwtc9szneogjAecpmFOj7nVFCAbo0J7G18lcSWjtbQSU=
X-Received: by 2002:a1c:2dcf:: with SMTP id t198mr4510657wmt.147.1565921237851; 
 Thu, 15 Aug 2019 19:07:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190109203911.7887-1-logang@deltatee.com>
 <c4298fdd-6fd6-fa7f-73f7-5ff016788e49@deltatee.com>
 <CAEbi=3cn4+7zk2DU1iRa45CDwTsJYfkAV8jXHf-S7Jz63eYy-A@mail.gmail.com>
 <CAEbi=3eZcgWevpX9VO9ohgxVDFVprk_t52Xbs3-TdtZ+js3NVA@mail.gmail.com>
 <0926a261-520e-4c40-f926-ddd40bb8ce44@deltatee.com>
 <CAEbi=3ebNM-t_vA4OA7KCvQUF08o6VmL1j=kMojVnYsYsN_fBw@mail.gmail.com>
 <e2603558-7b2c-2e5f-e28c-f01782dc4e66@deltatee.com>
 <CAEbi=3d7_xefYaVXEnMJW49Bzdbbmc2+UOwXWrCiBo7YkTAihg@mail.gmail.com>
 <96156909-1453-d487-ff66-a041d67c74d6@deltatee.com>
 <CAEbi=3dC86dhGdwdarS_x+6-5=WPydUBKjo613qRZxKLDAqU_g@mail.gmail.com>
 <5506c875-9387-acc9-a7fe-5b7c10036c40@deltatee.com>
 <alpine.DEB.2.21.9999.1908130921170.30024@viisi.sifive.com>
 <e1f78a33-18bb-bd6e-eede-e5e86758a4d0@deltatee.com>
 <CAEbi=3f+JDywuHYspfYKuC8z2wm8inRenBz+3DYbKK3ixFjU_g@mail.gmail.com>
 <8b7b6285-dd85-5895-8653-be1f6f08cca8@deltatee.com>
 <CAHCEeh+us9N5_AMAJp41Ob9R9PD=JfWLcUrU+gU54xf8NKddJw@mail.gmail.com>
 <315f8a06-72f8-9ee8-4a3c-aa9e66b472fd@deltatee.com>
In-Reply-To: <315f8a06-72f8-9ee8-4a3c-aa9e66b472fd@deltatee.com>
From: Greentime Hu <greentime.hu@sifive.com>
Date: Fri, 16 Aug 2019 10:07:05 +0800
Message-ID: <CAHCEehLvw7vnhUaFUE69+mAgw5H8aeLh9c7+Qcg_HaKwwFpOqw@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] RISC-V: Implement sparsemem
To: Logan Gunthorpe <logang@deltatee.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_190719_524505_36668E9A 
X-CRM114-Status: GOOD (  18.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rob Herring <robh@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Andrew Waterman <andrew@sifive.com>, Palmer Dabbelt <palmer@sifive.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Bates <sbates@raithlin.com>, linux-mm@vger.kernel.org,
 Greentime Hu <green.hu@gmail.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Olof Johansson <olof@lixom.net>, linux-riscv@lists.infradead.org,
 Michael Clark <michaeljclark@mac.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 12:20 AM Logan Gunthorpe <logang@deltatee.com> wrote:
>
>
>
> On 2019-08-15 3:31 a.m., Greentime Hu wrote:
> > Hi Logan,
> >
> > On Thu, Aug 15, 2019 at 6:21 AM Logan Gunthorpe <logang@deltatee.com> wrote:
> >>
> >> Hey,
> >>
> >> On 2019-08-14 7:35 a.m., Greentime Hu wrote:
> >>> How about this fix? Not sure if it is good for everyone.
> >>
> >> I applied your fix to the patch and it seems ok. But it doesn't seem to
> >> work on a recent version of the kernel. Have you got it working on v5.3?
> >> It seems the following patch breaks things:
> >>
> >> 671f9a3e2e24 ("RISC-V: Setup initial page tables in two stages")
> >>
> >> I don't really have time right now to debug this any further.
> >>
> >
> > I just tried v5.3-rc4 and it failed. I try to debug this case.
> > I found it failed might be because of an unmapped virtual address is used
> > in memblocks_present() -> memblock_alloc ().
> >
> > In this commit 671f9a3e2e24 ("RISC-V: Setup initial page tables in two
> > stages"), it finishes all the VA/PA mapping after setup_vm_final() is
> > called.
> > So we have to call memblocks_present() and sparse_init() right after
> > setup_vm_final().
> >
> > Here is my patch and I tested with memory-with-hole.
> > It can boot normally in Unleashed board after applying this patch.
>
> Great, thanks! I'll roll this into my patch and send v5 out when I have
> a moment. Can I add your Signed-off-by for the bits you've contributed
> to give you credit for your work?

Sure. Please use my Signed-off-by: Greentime Hu <greentime.hu@sifive.com>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

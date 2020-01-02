Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3BFC12E1F2
	for <lists+linux-riscv@lfdr.de>; Thu,  2 Jan 2020 04:47:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/rh9q6153m34prHm4tORWlNz9EKvypr1EIdcld9Y+es=; b=YbwhYQ9PgdL8tYwJXrlcpSNo1
	PWDe3IaMLpuPjrxtTztHjY91LCZx3C2kAfUJOKO5aM0KHuLB8bj1U78pLKO1aaijBbEPwHrvyE8tl
	VK6BDLV/G/ggNcpKzk7LkmnC+0ofCd5a+WGANnMNA/gaej15zIKWSwJCq9UVAioybCscp0G3OAcnS
	su1GXVeb/qIqypDv6wyNYvcZP2vQRWmgScJlwo89QN6zFm+TWv5Jqib19KUJRAbKIvo/aoid5vjKS
	R4b8uOserlFkgrqsYi02Cm095G0F+cCPih/7Fs9v5dgHlooGDGR//eWllI+2678s0IHud9c1fLIqx
	vKALIP7nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imrSd-0007AI-Vg; Thu, 02 Jan 2020 03:47:47 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imrSa-00079p-O7
 for linux-riscv@lists.infradead.org; Thu, 02 Jan 2020 03:47:46 +0000
Received: by mail-ot1-x342.google.com with SMTP id k8so38146458otl.13
 for <linux-riscv@lists.infradead.org>; Wed, 01 Jan 2020 19:47:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/rh9q6153m34prHm4tORWlNz9EKvypr1EIdcld9Y+es=;
 b=lkrN6Y3s6jYVS82ZyE0DHMRUjNhpHd1g2b6oJ4zb7XIx/c8X4Kvv6x2brkCBdUVrgR
 rnDOWe0iuGuf7mMnFEmT2ZF3vHDl6PvOMLXaoSHaTxlrYL7sn809stmYwGhsCDrVzK28
 5/SOIKVsUpUOggXVsP2nBlg0C4lHYdSU1hjP1ncezHYsN99gNaupvSxKr7w3J4djzIBz
 fHjsqsn7BNL526ptCgpRX3O7NEUrGNdw5Dbpgnu3JCKirG1GrWP86Tb0rsPGm7eEqwIK
 NFvrNNgB/x0c0PJDt/fdwWpGAVPperNbSOCmhr+nCTjZ0x+Nc3gSsCT+/uXdSYk0nvMJ
 qarg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/rh9q6153m34prHm4tORWlNz9EKvypr1EIdcld9Y+es=;
 b=oemnXvDV+O3vWBcjnHQKU9FfrDj3Dra0P+qpaJZZuDsyh4HVPEJoS5jp9z/hgoek0u
 rxxLxRdFR+nk89hz9onUyPD2JGvU77s5ZXk3R+KRZVizlGkqgU35zsVD/ueUAS+EwMP4
 He/a8pfxZ0Iwed9rYWYQ1/rnkmL6zoqDgwbzsknRqAcc4RahXH5dRFJOi87ugRSnpXmp
 LEfKNt9G1zGSEAqgjV0wdP1A1mT9ZmRnB0DAHJdpkwdyrQ/7bPXJe7xEl1oWq21rYOy7
 72ljaO2pWstyfvPRq4kT4YET0hYSuA45eQ7DxxKknMYHyNtsnNqaYBdZbOozc+DVU7q7
 ZgEg==
X-Gm-Message-State: APjAAAUaWgEi8BgsbvGbonr1o20IRWUybwzbUNSl00e/LXDVfBWWmLm+
 88uJggD37PsjkiCMIHSDjZhNkAdyLqKCkunmfQ1h1A==
X-Google-Smtp-Source: APXvYqxJ1al3wj1gg8p8+6+WCfuZGLWekGcYeGb8eiGZqGbKRPhALLO2kxgQQjiss4qQ9EcTNN0X4O4sj2Q3Ht7FHMk=
X-Received: by 2002:a9d:2028:: with SMTP id n37mr93593953ota.127.1577936863434; 
 Wed, 01 Jan 2020 19:47:43 -0800 (PST)
MIME-Version: 1.0
References: <20200102030954.41225-1-zong.li@sifive.com>
 <CAAhSdy0NW9OTGOGoyZ7QmAOVbR_iF2ZM7b9eKDW0U1L+as-oaA@mail.gmail.com>
In-Reply-To: <CAAhSdy0NW9OTGOGoyZ7QmAOVbR_iF2ZM7b9eKDW0U1L+as-oaA@mail.gmail.com>
From: Zong Li <zong.li@sifive.com>
Date: Thu, 2 Jan 2020 11:47:33 +0800
Message-ID: <CANXhq0qP1hq9gBr19iHSmtSrfs=V4wKjjTXQGiqZ140i+eH+Lg@mail.gmail.com>
Subject: Re: [PATCH] riscv: gcov: enable gcov for RISC-V
To: Anup Patel <anup@brainfault.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_194744_922690_1AB0C5BC 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, linux-doc@vger.kernel.org,
 corbet@lwn.net,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Jan 2, 2020 at 11:37 AM Anup Patel <anup@brainfault.org> wrote:
>
> On Thu, Jan 2, 2020 at 8:40 AM Zong Li <zong.li@sifive.com> wrote:
> >
> > This patch enables GCOV code coverage measurement on RISC-V.
> > Lightly tested on QEMU and Hifive Unleashed board, seems to work as
> > expected.
> >
> > Signed-off-by: Zong Li <zong.li@sifive.com>
> > ---
> >  Documentation/features/debug/gcov-profile-all/arch-support.txt | 2 +-
> >  arch/riscv/Kconfig                                             | 1 +
> >  2 files changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/features/debug/gcov-profile-all/arch-support.txt b/Documentation/features/debug/gcov-profile-all/arch-support.txt
> > index 059d58a549c7..6fb2b0671994 100644
> > --- a/Documentation/features/debug/gcov-profile-all/arch-support.txt
> > +++ b/Documentation/features/debug/gcov-profile-all/arch-support.txt
> > @@ -23,7 +23,7 @@
> >      |    openrisc: | TODO |
> >      |      parisc: | TODO |
> >      |     powerpc: |  ok  |
> > -    |       riscv: | TODO |
> > +    |       riscv: |  ok  |
> >      |        s390: |  ok  |
> >      |          sh: |  ok  |
> >      |       sparc: | TODO |
> > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> > index d8efbaa78d67..a31169b02ec0 100644
> > --- a/arch/riscv/Kconfig
> > +++ b/arch/riscv/Kconfig
> > @@ -64,6 +64,7 @@ config RISCV
> >         select SPARSEMEM_STATIC if 32BIT
> >         select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
> >         select HAVE_ARCH_MMAP_RND_BITS if MMU
> > +       select ARCH_HAS_GCOV_PROFILE_ALL
> >
> >  config ARCH_MMAP_RND_BITS_MIN
> >         default 18 if 64BIT
> > --
> > 2.24.1
> >
>
> Looks good to me.
>
> Reviewed-by: Anup Patel <anup@brainfault.org>
>
> May be (not 100% sure) split this into two patches so that
> Documentation patch can be taken by Jonathan.

OK, let me split this patch in next version.

>
> Regards,
> Anup


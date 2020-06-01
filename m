Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8601E9FCC
	for <lists+linux-riscv@lfdr.de>; Mon,  1 Jun 2020 10:08:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xo+bURQspdkz3spd+YvrJ3AePpwv+4Rws7nHo6tOrsk=; b=HuCKq3KZeTQiVC
	t/Wn42FPcA2QrZcEmaHY6A0nkQIFTX81DjpK/JOK683F1OvFoX6FHLNMAP6mV1Z3g8QyCWxyFaTKp
	Fsoij5x8fjrwvfJe13o78qResk1+VOx814riV5jyhcqQh9/JkOm2YsKEHxiEm5riuA8qaoWCozjlN
	TyAgHmyeS6EXRFktOEhJtW78yRHFCc85Q49xmS9w/jE4jUwwUaZVlq4jyudHT2DgZKkrKPedJSnjl
	fJ6ovU34wp5XAJ6gBD9QOAACS1dVDq3HGnDDmGjCYI9NZOw1t/Twz6A0UpZd+g8wO3jVbriGSkZwj
	DGbR1pi4W4/G97TGlHMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jffUW-0003Ox-2J; Mon, 01 Jun 2020 08:08:16 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jffUS-0003OS-TL
 for linux-riscv@lists.infradead.org; Mon, 01 Jun 2020 08:08:14 +0000
Received: by mail-qk1-x742.google.com with SMTP id f18so8286443qkh.1
 for <linux-riscv@lists.infradead.org>; Mon, 01 Jun 2020 01:08:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Xo+bURQspdkz3spd+YvrJ3AePpwv+4Rws7nHo6tOrsk=;
 b=a09D16ed7wF4iKs+pfRyt2aLzVU8iQUs5/r3tC7L81+X75srG2/ZiydaWBgiSmAApS
 nCtivrrnY2V+pCVsPq+WffUnwoioTYb0bMBNTNCkOwNhYmzWNjQHoqeD9WYgTz1o3HCk
 sjDtLVluLp8ZyMaVtgJ1VuQpH4BS2eu4UUHNyqEaMOnMMwHIHGjjA21z1M4JDD+xhHUr
 5Vsd36XufhvZvyYMu3KVi0BbOjgRoe/oqlQGwzprA+tB+tK4AbFQPSrbuc523S367FZG
 9R9TY1GNF1NKm9PM1UzqW1yBnUwJmY1bkqDDD78m1JixwaW+eIC5ZdyjokA1wxj83z7I
 jmAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Xo+bURQspdkz3spd+YvrJ3AePpwv+4Rws7nHo6tOrsk=;
 b=XusXtYgnjCs9Jd65ZjcBoK6crSaJqWN4VspcumalCEtU7dIeXhD1V0/7A7Zc4UbDyp
 FePys0HunhZe+Lu2d5X6J5zyeZtF+cb5rQNATKYdpUBt09jheXD6Csl7YaQxEDLJ0X1J
 wpDhlCGRf6tsQEuwzDf8sBQnoUCfg+6MZ0u2eJj5tysppOGCBNBifu0V3PXunmL61Bjk
 ecxmso3lYAVA5jXghN6fr1Bz/VjufoQbuRQrWr2mPH1Rghb4JcoufF9TxoRyHCZrcSLt
 hrqbDJvyUmuAeCmBjR1maG02xhJpn+uetNjetWOPErytnJU817iQvpKWOXzZGeMEsQGl
 YA7g==
X-Gm-Message-State: AOAM532LhZXIvVRVuS4imVpSdeCO1NAPgCMyf+bEXmqzyicLihpbeKVv
 qNgjQ3OdgmzKGrMSBD1zPvrG6NAaHQm1U1Af9wH3HusPKAU=
X-Google-Smtp-Source: ABdhPJwUBPUpCNJjsK6CkhcPkiVmvi4DBwCi4KfwXts+eqGcaujTN9x7EZu5sROrV6MiX3+wewnl6WpusWTqDFtOlks=
X-Received: by 2002:a05:620a:158d:: with SMTP id
 d13mr18767834qkk.327.1590998889902; 
 Mon, 01 Jun 2020 01:08:09 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1590474856.git.greentime.hu@sifive.com>
 <e896db91e3303f64ac401021f848e536e9d42aaa.1590474856.git.greentime.hu@sifive.com>
 <CAJF2gTTdyXybMGPzqKi1Z_ueQkf5XxiZK2X1HrDnZkCaVU1DAg@mail.gmail.com>
In-Reply-To: <CAJF2gTTdyXybMGPzqKi1Z_ueQkf5XxiZK2X1HrDnZkCaVU1DAg@mail.gmail.com>
From: Greentime Hu <greentime.hu@sifive.com>
Date: Mon, 1 Jun 2020 16:07:58 +0800
Message-ID: <CAHCEehKC4g-TS3n_fruWy2c4CG3dQeBU1oVVEAbFe+gBGOeUnA@mail.gmail.com>
Subject: Re: [RFC PATCH v4 07/13] riscv: Add has_vector/riscv_vsize to save
 vector features.
To: Guo Ren <guoren@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_010813_011744_65239352 
X-CRM114-Status: GOOD (  15.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Guo Ren <guoren@linux.alibaba.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, Vincent Chen <vincent.chen@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Guo Ren <guoren@kernel.org> =E6=96=BC 2020=E5=B9=B45=E6=9C=8831=E6=97=A5 =
=E9=80=B1=E6=97=A5 =E4=B8=8A=E5=8D=888:58=E5=AF=AB=E9=81=93=EF=BC=9A
>
> Reviewed-by: Guo Ren <guoren@kernel.org>
>
> On Tue, May 26, 2020 at 3:03 PM Greentime Hu <greentime.hu@sifive.com> wr=
ote:
> >
> > From: Guo Ren <guoren@linux.alibaba.com>
> >
> > This patch is used to detect vector support status of CPU and use
> > riscv_vsize to save the size of all the vector registers. It assumes
> > all harts has the same capabilities in SMP system.
> >
> > [greentime.hu@sifive.com: add support for dynamic vlen]
> > Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
> > Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
> > ---
> >  arch/riscv/kernel/cpufeature.c | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> >
> > diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeat=
ure.c
> > index c8527d770c98..5a68a926da68 100644
> > --- a/arch/riscv/kernel/cpufeature.c
> > +++ b/arch/riscv/kernel/cpufeature.c
> > @@ -16,6 +16,10 @@ unsigned long elf_hwcap __read_mostly;
> >  #ifdef CONFIG_FPU
> >  bool has_fpu __read_mostly;
> >  #endif
> > +#ifdef CONFIG_VECTOR
> > +bool has_vector __read_mostly;
> > +unsigned long riscv_vsize __read_mostly;
> > +#endif
> >
> >  void riscv_fill_hwcap(void)
> >  {
> > @@ -73,4 +77,11 @@ void riscv_fill_hwcap(void)
> >         if (elf_hwcap & (COMPAT_HWCAP_ISA_F | COMPAT_HWCAP_ISA_D))
> >                 has_fpu =3D true;
> >  #endif
> > +
> > +#ifdef CONFIG_VECTOR
> > +       if (elf_hwcap & COMPAT_HWCAP_ISA_V) {
> > +               has_vector =3D true;
> > +               riscv_vsize =3D csr_read(CSR_VLENB) * 32;
> No magic number 32.
> eg:
> #define VECTOR_REGS_NUM 32
>

Hi Guo,

Thanks.
I'll replace it with a defined macro or adding comments since it is
used only once.


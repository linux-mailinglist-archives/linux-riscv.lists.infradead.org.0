Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F381EB3A5
	for <lists+linux-riscv@lfdr.de>; Tue,  2 Jun 2020 05:08:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mcWVEBjLUZjTlhCJLDc0yy15Dn4BUo5D9cQzlf8ql5Y=; b=feTPvHKgXDgLL7
	1B0FWJ6dnCzC8qS6Jfnr5kfcbqHNbEj8oDTYxgGx8JWSfZSlW1KTkVDQEkntknBH2ZUEEogWc4MbM
	wFT7zNIMj39f9XR9mmhOm3H7BuopZ6+/xrpUNqbEo/IWtwJsC8DvZNpmqJitiuIKUa+gRzjeRTDpq
	CItuuAeMDVPExpxm9N5v6BUz6M9bv5Iw5xcnOd0MFp6D96L6a69aRp2Eg8u0DwKRQpPYoiYdRxSos
	yX2KzoIJIfrDb2uMGZBco7ReeudLrMZQP3JyzP4g/ck8tW0q5dGprymy2zFX1pfucKw6yPIYy9JMc
	AdLhs7bMGR9ye7WpJffg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfxHz-0003ty-Ml; Tue, 02 Jun 2020 03:08:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfxHw-0003ot-Is
 for linux-riscv@lists.infradead.org; Tue, 02 Jun 2020 03:08:30 +0000
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
 [209.85.167.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8866B2073B
 for <linux-riscv@lists.infradead.org>; Tue,  2 Jun 2020 03:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591067307;
 bh=OSeKIBeNKdViZCLRp/a6oN0A3BXom2MMiKOlG4JOszY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=p86VHXmH+JPweu+gOsbLIcYD0DrJgbf2BLnT10K/gjaNhTifoYYaQq2u9EliMi3SV
 EzSMy0zTWYGeElwnM13nU0tkysAwWWifCFuxKXNUE2mAHSPb/o0xO2ESCtF5tn9jk6
 Kp45e+zS3mYV25/5uFkc4G/eq9BWLDm5JaGsa8tU=
Received: by mail-lf1-f50.google.com with SMTP id d7so5202145lfi.12
 for <linux-riscv@lists.infradead.org>; Mon, 01 Jun 2020 20:08:27 -0700 (PDT)
X-Gm-Message-State: AOAM533FEDwMlGnxxrQ6sLgCraETrBibRyBaQw8DqV7mdGGT4yYZAhUs
 YhcEcIH1BYlYt0nd51/cmJoWGNlMLqvVgAtncKQ=
X-Google-Smtp-Source: ABdhPJyymHI6pTAhHP8b9+puyjeWJcXgpaifJQGqwrdAGwJBOwvz5qcT1uT26G60cDLA8s66fWq+rX1Ixl4ocaCP43M=
X-Received: by 2002:a05:6512:3111:: with SMTP id
 n17mr12611309lfb.137.1591067305860; 
 Mon, 01 Jun 2020 20:08:25 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1590474856.git.greentime.hu@sifive.com>
 <CAJF2gTTxaZtyLYok68a5bBnLMuZjrwcQ7dvTR8NGdJc3Cqv81g@mail.gmail.com>
 <CAHCEehLunCV4ZY_=j_bwPWMppXBQ8vj_0oScVpt4ySR9rAjtyA@mail.gmail.com>
In-Reply-To: <CAHCEehLunCV4ZY_=j_bwPWMppXBQ8vj_0oScVpt4ySR9rAjtyA@mail.gmail.com>
From: Guo Ren <guoren@kernel.org>
Date: Tue, 2 Jun 2020 11:08:14 +0800
X-Gmail-Original-Message-ID: <CAJF2gTTRKWP47Y4bXmXpPdG-ay4Je2+HUOaMOMz37qDxZSiu6A@mail.gmail.com>
Message-ID: <CAJF2gTTRKWP47Y4bXmXpPdG-ay4Je2+HUOaMOMz37qDxZSiu6A@mail.gmail.com>
Subject: Re: [RFC PATCH v4 00/13] riscv: Add vector ISA support
To: Greentime Hu <greentime.hu@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_200828_642099_79A0A889 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

On Tue, Jun 2, 2020 at 10:21 AM Greentime Hu <greentime.hu@sifive.com> wrot=
e:
>
> Guo Ren <guoren@kernel.org> =E6=96=BC 2020=E5=B9=B45=E6=9C=8831=E6=97=A5 =
=E9=80=B1=E6=97=A5 =E4=B8=8B=E5=8D=8811:52=E5=AF=AB=E9=81=93=EF=BC=9A
> >
> > Hi Greentime & Vincent,
> >
> > Thx for the dynamic vlen implementation. I've two suggestions:
> >  - Please give out glibc patches mail URL, we need to review them toget=
her.
> >  - We need to consider that not all processes need vectors. Most
> > system processes do not have vector features, and we should not force
> > save/restore vector for every process.
> >
>
> Hi Guo,
>
> Thanks for reviewing the patch. We are still cooking the glibc patch,
> we will add the glibc link address once we post it.
> For the save/restore mechanism in signal, it is basically the same
> with FPU porting, we can optimize it when setup_sigcontext() for both
> FPU and VECTOR in the future.
>
> /* Save the floating-point state. */
> if (has_fpu)
>         err |=3D save_fp_state(regs, &sc->sc_fpregs);
> /* Save the vector state. */
> if (has_vector)
>         err |=3D save_v_state(regs, sc);
>
> There should be a better way to detect whether this task use
> fpu/vector or not. Might be elf attributes or something else.
Ok, we could improve it in future patches.

--=20
Best Regards
 Guo Ren

ML: https://lore.kernel.org/linux-csky/


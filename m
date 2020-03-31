Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33AC4198A23
	for <lists+linux-riscv@lfdr.de>; Tue, 31 Mar 2020 04:45:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cVqU5IzDFMtEwQ1SdELiLgU5kra5OrHiUcD1XBCVDgs=; b=OK2GZ6VJmch7db
	nf7yFpbLPNX0BcKeMBbtyanldgNeMKgyOkF2IQF4aQ/7nSMZ2ZjhRyvrPMaWub0tEkhblc8knaUWE
	IO+0lggHhEF7iS3zDB7Tps8+bktem1QjBT8SOPTCa2VEgaETHlbwCjHkDJFwt758eLx5ADqFxDn69
	ptiPIz8S353kEzfwadIP6rcDjG0NAwwtFe9m2LayJ3Ul528yBtyazLTPhaGSoobq6ju+Fpli9BV2U
	JE0ecKJd/HjaujtsNub2ONVvSmQ0iup4AkgqAsIvm2iZmNzQXb0rDEKtfd7Tt/m1k8nVt1gROUlx2
	Dttro/HmL4YBQ8cMRyLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ6uM-0001hn-9x; Tue, 31 Mar 2020 02:45:42 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ6uG-0001go-6B
 for linux-riscv@lists.infradead.org; Tue, 31 Mar 2020 02:45:39 +0000
Received: by mail-ot1-x344.google.com with SMTP id f52so20506413otf.8
 for <linux-riscv@lists.infradead.org>; Mon, 30 Mar 2020 19:45:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=cVqU5IzDFMtEwQ1SdELiLgU5kra5OrHiUcD1XBCVDgs=;
 b=WYLIUVbnj1Klvmjge4kDkOK13ziylDUSA3RqL+GiVvCZE3o/fBjO/pXe6a9q3Fab2W
 oLmh1FkN0p0G9YphbQR4ByrsGbX0EEOjlSfH0ehRwAG/pfHRy31nzuDzxb/5bWFhDExq
 V82kBJ0l6d5L6N6vBZf9zEclmm55hDBoo/J+F9WDk79Np0MLZFbVhi/PVygo/tQLW0fZ
 KJObbcWFlnfDGelmo0XTF2VVwapRF26sxcjPIDw72HqsgYTrf7K5902UAjhPDEAVdVmv
 dH2KQQrmOaE9SyHqKFHdJDKfr9OwTWo0Io0+8HOE4OQgid5/oPWBcz+F33cGSCUE2Ik+
 HFhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=cVqU5IzDFMtEwQ1SdELiLgU5kra5OrHiUcD1XBCVDgs=;
 b=XDegRRhp302ah4wHDyByw2cxcKb+g5wF8iMIeokMhEDAXBMxHrgrWUTmV8QaaQrPSY
 sdbQDa2TLMKmzH5CeayiC3i0Y5Ei8ZwF/Ou05DMz1l63i8IxL1uE9PSzY0fUNDpzJ359
 n3lgxoCpR6PLqfGRlD26QsRRP8VcRxusY9N6Wt61YMuNKSe1A7VRfNeO+LQOCNb2WgHA
 gMVqBvRpnbkX+p1QwACYisJkKsTyTDXq3D3Q/t+6MagdH4L/mckYAnie2MYLE0FUrf6N
 6fTSkBwC89CAtg76+MzfeKafdFLuVcgckFRRJAM1xmc6aNVlwWrlRcE366snPHfS8OB3
 DrFA==
X-Gm-Message-State: ANhLgQ2TdMAECmiyqCDr6KyBMmYQSPaOTzeAMPj14Q4U3XLVKpUrn5yl
 g4k3nA+cGhC1ueIif6wZDkrjJ73ynddOIUVQJgWlTRwy
X-Google-Smtp-Source: ADFU+vvGQXgwysVsU+geRrF6flKZ1PkqCkjLSRVKtHzuFnt0kahtQvd2XNUUTMy0/vMErtgQXXXuMsHW5JZ17Jm4JGI=
X-Received: by 2002:a9d:7f19:: with SMTP id j25mr11712164otq.129.1585622731419; 
 Mon, 30 Mar 2020 19:45:31 -0700 (PDT)
MIME-Version: 1.0
References: <20181113195804.22825-1-me@packi.ch>
 <20181113195804.22825-3-me@packi.ch>
 <20181114003730.06f810517a270070734df4ce@kernel.org>
 <a6abc4ce-4398-5ca6-992b-efb31e01c5ca@packi.ch>
 <20181115004141.5ed772834fc6bdf3467f244e@kernel.org>
 <CANXhq0qWwKRrz80Q3LSeQu-cH19otCF1my6dDGDxH0Q5j1RYYw@mail.gmail.com>
 <9cdd84b5-6c81-9bfa-5d35-6645f542f71e@packi.ch>
 <CANXhq0peZCWZsh37zZVzoi7spSzTfz7v4H5AytiAENKJdWK_tA@mail.gmail.com>
In-Reply-To: <CANXhq0peZCWZsh37zZVzoi7spSzTfz7v4H5AytiAENKJdWK_tA@mail.gmail.com>
From: Zong Li <zong.li@sifive.com>
Date: Tue, 31 Mar 2020 10:45:21 +0800
Message-ID: <CANXhq0r5+BjsJ8jFtkWcm_1qPPQnLyZ5THNdPsxU568FNNa0XA@mail.gmail.com>
Subject: Re: [RFC/RFT 2/2] RISC-V: kprobes/kretprobe support
To: =?UTF-8?Q?Patrick_St=C3=A4hlin?= <me@packi.ch>, 
 Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_194537_589745_95985C46 
X-CRM114-Status: GOOD (  20.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Greentime Hu <greentime.hu@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Anders Roxell <anders.roxell@linaro.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 5:28 PM Zong Li <zong.li@sifive.com> wrote:
>
> On Wed, Dec 18, 2019 at 9:10 PM Patrick St=C3=A4hlin <me@packi.ch> wrote:
> >
> > Hi all
> >
> > On 18.12.19 10:14, Zong Li wrote:
> > > On Wed, Dec 18, 2019 at 5:09 PM Zong Li <zong.li@sifive.com> wrote:
> > >>
> > >> From: mhiramat@kernel.org (Masami Hiramatsu)
> > >>
> > >> On Wed, 14 Nov 2018 21:52:57 +0100
> > >> Patrick Staehlin <me@packi.ch> wrote:
> > >>
> > >>> Yeah, I think it's simpler.
> > >>>
> > >>> And I found that the kprobe_breakpoint_handler() was called without
> > >>> checking !user_mode(regs). In that case, you should add the check i=
n
> > >>> front of kprobe_breakpoint_handler() call.
> > >>>
> > >>> Thank you,
> > >>
> > >> Hi all,
> > >>
> > >> Is there any update? I was wondering if this patch are keep going? I=
f
> > >> not, I think I could pick it up to go head
> >
> > I am still working on it, albeit slowly, holiday season coming up here
> > in Switzerland may accelerate that a bit. All the feedback I got from
> > Masami has been implemented.
>
> As Masami's suggestion, I don't see stop_machine in your implementation [=
1],
> are there some concerns to use it on SMP?

Hi all,
I introduced the patching code framework. Maybe it is helpful for
self-modify code here. (Please see:
https://lkml.org/lkml/2020/3/9/679)
This patch series is reviewing, maybe we could apply the
implementation after it was merged.


>
> > Additionally I added instruction simulation for everything except memor=
y
> > accesses. I am currently working on getting compressed instructions
> > decoded properly into regular instructions but that is very tedious wor=
k.
> > I guess I am two or three full days of work away from getting a RFC/RFT
> > v2 series ready I guess that will happen in early January.
>
> Thanks for the efforts.
>
> >
> > What I currently have is at [1], that is mostly untested as of now
> > (beware I will rebase/squash that branch regularly). What I could use
> > help with in the future (as in for v2), is somebody testing it on real
> > hardware, as I've never gotten any testing feedback on my original
> > patch-series (that would not have worked properly because of the lackin=
g
> > cache-flush).
>
> I give some quick tests by using kprobe sanity test and simple LKM on
> Hifive Unleashed board,
> it seems to work normally. I could help to test your next version patch a=
s well.
>
> >
> > [1] https://github.com/packi/linux/tree/kprobes-riscv
> >
> > Patrick


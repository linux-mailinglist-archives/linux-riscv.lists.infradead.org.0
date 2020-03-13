Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 111D0184E33
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Mar 2020 18:57:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7NUhUutL/IZBO7MUeldB+kOH8w5Q6Nm0TQqFO4W3Uwo=; b=hZAWJXnHxC0O8zZyq3jvcHpmN
	esnOkxVktqqAyIqk5G5yjIh2QH1IlWHU/nF90o3C6X9L0qUb1R9/+2s0A9cxb5C8JpXfiimJiZ2UM
	kdTh/2UndbOWe9NKhq1tgoiFO5ul5OiaVQwIMoXgzR4BTXUYQmPg03Uj7bd6Bswuz5zIFTa6hQ5Zn
	ehO6eO2R2+EAPfRykvfn2KiSSsAGFw9iuUSNJqmjx8i1+uXVmpVzdOWudAux4yHz1MYvuIiPGVcHj
	YBqNjNZI8H/LImdb+U1t8iquAc7bEbxh52y2F0AHgeXyJstLEM6b62tbzDUUJsyP04kNP+DdYXXwB
	iM9eyCRRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCoYH-00018G-MH; Fri, 13 Mar 2020 17:56:53 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCoXP-0000Km-V1
 for linux-riscv@lists.infradead.org; Fri, 13 Mar 2020 17:56:02 +0000
Received: by mail-oi1-x241.google.com with SMTP id v19so10303658oic.12
 for <linux-riscv@lists.infradead.org>; Fri, 13 Mar 2020 10:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=carlosedp-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7NUhUutL/IZBO7MUeldB+kOH8w5Q6Nm0TQqFO4W3Uwo=;
 b=wfaScZwAbhjBU2YPq/W2l6tWci6mRVmWkU+p4AHWD455+TBZdMj1wBTKvhT3kcIRxT
 aoyyxwO5O56HolYLYy5lCreqIBNX043mK9wzu5TfbsQrGPt89BHjU3zfZVDkhRpgipEj
 PKXevS0K4vFiEA6Nx95mdbgQIRWWP1h9or6YpFV8vXRY3ljYGB4zW72/loGBRehjujI6
 3fd4SLQmCcAnh+hs0vFgbC5Kc9P+IavWFtHFEetjPx31Te6hTq9/Jz5dN67X/mxwhcbs
 XrzMwrBLQdpQG/MbofvL+2H2kpJLJhemc1jtnM6YbI5ZYXJRjKGhm4p6ZaFJkXYc3VW3
 CiWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7NUhUutL/IZBO7MUeldB+kOH8w5Q6Nm0TQqFO4W3Uwo=;
 b=Zl3YDokg5GUDBYZ2rzcmC9I5pMrQj5UT2VsQRfb3+QzcwLYGm0M98CYEvJv1F6Lrwj
 Os51n1dzj9zQtpLKKDutvr9W72XHcW1AyposP1ktZHT5pvjbjGVO6lsPaYCq1RwA167E
 T2882y9NKmezDd6U1yvo4DsiGYJGMBhBn0l9rT/R4J7JafqylTewjIZKQdWnX2mJzVbh
 wZ7bOsuEDIDPbUF1GlppVBUTXCzZgifdorcxbPygAS1vUHLPdnmbIxm2gogqNB4Ssa4Q
 T2y38UA/5vSUfdzFzXpEEMSkj993FPQsAMcQKb0Y+LDKMJnbRm/EPvrki2qKtT1bxB50
 6MQg==
X-Gm-Message-State: ANhLgQ1q8Jm4XFRlF9rLzSeAQwxqswhMqN8ZYa9eIDvzOyK7K9TvqcoB
 dUMqLMlDBWoJtyrwu8xVUz+QGtur/Zo/Vg==
X-Google-Smtp-Source: ADFU+vumBIPWj0sbwI9rpCoLZC7yaGeVjdYDLmZxv7Bv12sasQyD3ke568q1i4ueGdUc/cHjE54PHw==
X-Received: by 2002:aca:4e47:: with SMTP id c68mr8247823oib.16.1584122158306; 
 Fri, 13 Mar 2020 10:55:58 -0700 (PDT)
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com.
 [209.85.210.51])
 by smtp.gmail.com with ESMTPSA id w33sm10847049otb.14.2020.03.13.10.55.57
 for <linux-riscv@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Mar 2020 10:55:57 -0700 (PDT)
Received: by mail-ot1-f51.google.com with SMTP id a9so11013499otl.6
 for <linux-riscv@lists.infradead.org>; Fri, 13 Mar 2020 10:55:57 -0700 (PDT)
X-Received: by 2002:a9d:5e04:: with SMTP id d4mr11825471oti.36.1584122156797; 
 Fri, 13 Mar 2020 10:55:56 -0700 (PDT)
MIME-Version: 1.0
References: <CADnnUqfDnkvCJVqBkDw+gV7_zs5Q_Mb3anQTu+UujjJ8bBk+ng@mail.gmail.com>
 <CAEn-LTrSXHdfp9OPGRSoJCfi8D8Cg8FqS=_-JYpDatAT0X5C0w@mail.gmail.com>
 <CADnnUqciAtweH6KqxvK7Z5ZL-uqOQHujWQBrt+aj2y+31BpuHQ@mail.gmail.com>
 <CADnnUqe1GrqJ5EUQQoPp063bs9SqQkHUSqK_hcWqpkJQcxySTg@mail.gmail.com>
 <CAOnJCULxNeuS3v1UEFAC_uG4heQfR3QCK-STv48LCK1pbH-18A@mail.gmail.com>
 <94ee0543-e0e6-2be4-9168-e0c8a55ca92a@williamgrant.id.au>
 <CADnnUqduWL2gMBASF=8OX8huALW9Z2tWz73kcjDK5GL+xHtsbw@mail.gmail.com>
 <40bc5468-21e8-f6ac-fcb6-eff2efa7fd13@williamgrant.id.au>
 <CAOnJCUKTDTjB8rAov8XLkfT+PAymstcy6y4A75ijRstK6y202A@mail.gmail.com>
 <CADnnUqfJ=YvFSkpsCMDd9owAE_Pwxkn=mzJ8S2YvYqRff60xxA@mail.gmail.com>
 <CADnnUqeBrJ9MwwDTY2rBkboAJHSwivuZ_Rk69C0sNGSRw1UR3Q@mail.gmail.com>
 <CAPSAq_wVVvBAo184tYa0V7e8KoFRJMQULA7jYW=Lu=Wgbipx2A@mail.gmail.com>
In-Reply-To: <CAPSAq_wVVvBAo184tYa0V7e8KoFRJMQULA7jYW=Lu=Wgbipx2A@mail.gmail.com>
From: Carlos Eduardo de Paula <me@carlosedp.com>
Date: Fri, 13 Mar 2020 14:55:45 -0300
X-Gmail-Original-Message-ID: <CADnnUqeA_tc9M7D6yE=eEGmH-0hvKB7e5XbP8tZ5+DxO6YKriw@mail.gmail.com>
Message-ID: <CADnnUqeA_tc9M7D6yE=eEGmH-0hvKB7e5XbP8tZ5+DxO6YKriw@mail.gmail.com>
Subject: Re: Errors and segmentation fault while building Golang on Kernel
 after v5.4-rc3
To: David Abdurachmanov <david.abdurachmanov@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_105600_053527_99D31CDD 
X-CRM114-Status: GOOD (  17.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Atish Patra <atishp@atishpatra.org>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 William Grant <me@williamgrant.id.au>, Joel Sing <joel@sing.id.au>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Just build OpenSBI v0.6 and Kernel 5.6-rc5 and I can confirm it works fine.

I didn't see the TLB problems as before.

Thanks!

On Wed, Mar 11, 2020 at 1:29 PM David Abdurachmanov
<david.abdurachmanov@sifive.com> wrote:
>
> On Wed, Mar 11, 2020 at 8:38 AM Carlos Eduardo de Paula
> <me@carlosedp.com> wrote:
> >
> > On Mon, Feb 3, 2020 at 12:06 PM Carlos Eduardo de Paula
> > <me@carlosedp.com> wrote:
> > >
> > > On Sun, Feb 2, 2020 at 9:30 AM Atish Patra <atishp@atishpatra.org> wrote:
> > > >
> > > > On Sat, Feb 1, 2020 at 3:37 PM William Grant <me@williamgrant.id.au> wrote:
> > > > >
> > > > > On 2/2/20 5:58 am, Carlos Eduardo de Paula wrote:
> > > > > > Hi Atish, I've added that patch to latest OpenSBI from master, dd'ed
> > > > > > it to my mmcblk0p3 partition but still got problems building Golang
> > > > > > using kernel v5.5.
> > > > > >
> > > > > > [... snip ...]
> > > > > >
> > > > > > Did it worked for you William?
> > > > > >
> > > > > > Carlos
> > > > >
> > > > > Ah, sorry, I didn't actually test Atish's patch. It's not quite right,
> > > > > since .tlb_range_flush_limit = 0 implies the default is used. I think
> > > > > setting it to 1 should work,
> > > >
> > > > My bad. That's what happens when you are jet lagged and sent a patch
> > > > at 5AM without testing :(.
> > > > Ideally, it should be set to zero. I have fixed the issue in platform
> > > > header and sent a patch series.
> > > >
> > > > http://lists.infradead.org/pipermail/opensbi/2020-February/001060.html
> > > >
> > > > --
> > > > Regards,
> > > > Atish
> > >
> > >
> > > No worries Atish :)
> > >
> > > I've changed the parameter to "1" and confirm that it works.
> > >
> > > Built and tested Golang on v5.5.
> > > Carlos
> >
> > Atish, the correction of the TLB flush sent previously will be
> > upstreamed into OpenSBI or is something that should be patched
> > off-tree?
>
> This was merged sometime ago and is available in v0.6.
>
> david



-- 
________________________________________
Carlos Eduardo de Paula
me@carlosedp.com
http://carlosedp.com
https://twitter.com/carlosedp
https://www.linkedin.com/in/carlosedp/
________________________________________


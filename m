Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 593D9181C78
	for <lists+linux-riscv@lfdr.de>; Wed, 11 Mar 2020 16:38:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D8BodzdGHAF9vC4EoJc5QmOXpSdhZymF/8h60nkw3/o=; b=WEYUNGhd905P8aYuWGQg0HlK6
	4e/nssywsxmAfUmeXp0fKd9flyLRvvFuOcyeVZLW1q7RNucOV5M1r+UjyfhRFddsT6Vtq5edVxkjU
	HJmtLuY3Y1K+073dEkgClAuC4nwgmlGvo6FIpqP7sowBKtd9J+CREfFZ3osM9I7DFE+u/DUNr/DcJ
	2x/lUpzHloFQl8YhjQVjlltL4Qu+Aehc4hQW1PiDTgKoYIsquFEPdA2YhFgE3/ySRv5Pz8m4I2Gz6
	ZVQXZ1Zm4P8szZcQ02LqYGfESoo4vQfV8SMiBpfgu0osxpcH1WUnq1V0Ilty/1xFzvNBBUf6+uFz4
	wIYznaxsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC3RY-0002LZ-5G; Wed, 11 Mar 2020 15:38:48 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC3RV-0002L9-19
 for linux-riscv@lists.infradead.org; Wed, 11 Mar 2020 15:38:46 +0000
Received: by mail-ot1-x343.google.com with SMTP id 111so2392018oth.13
 for <linux-riscv@lists.infradead.org>; Wed, 11 Mar 2020 08:38:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=carlosedp-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=D8BodzdGHAF9vC4EoJc5QmOXpSdhZymF/8h60nkw3/o=;
 b=wJGv9XI/5d0qje3BEMRzuO+VRdWv2jDj+4Tq2Izsu20lyk+SsSxAFIpAoKurIYC8rF
 KY7L99lSGa2nVkAfk9k2bqamyuUtocrKS2XICXg0Ves9K5amkHkADZtLQAa/wrriCtOm
 JdL3eYTZFOlZ6F9ftmMKfFbAT9ynY+6H/kRYtGNwyxgMN/+TEkiD229YmvpA8NeoID3t
 GnanUmJfjAd98ZQvW8m8GCAiRuvLOCLGMYMJOqG8YoLyAsKa6WZzMWOFbdWBWb0mCbPz
 cwFk1bqrQd2SxAWjQlvi4iYg32txF8irGsLoyJZ2lnNAuvqv2GwgJsYNWK2eL3K2wGBV
 cy2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D8BodzdGHAF9vC4EoJc5QmOXpSdhZymF/8h60nkw3/o=;
 b=WbFM79vDryA1N6fVQoA1JrJsTrhGW+/j+v/CBzbh1A+UpPIvwjG2jEHkJgNK/kq2Vb
 wIPO/h1LgxMPpHX/8k8gFRs/f9lFsIUuTxK2CTqcuMKRQdlX48tHgzdRR5JzucVr5vfm
 jBl+ngL+RtQfdaGG5dmj1aCMlXsmUTwwDvmzf9AoXFFReX4c6ENlnQM9iWYUcwr1dTbC
 q3uJ+QwcPHovUbjxFHR8EZ6deI0XPUCh2G2jrM8/hZLS0tGrMtYgUi2mPXfcmk+lL8jm
 OObk8hMCmj+/haq5aLzS2LgCgo3O0ov7HLvq76mG9TlstsdrjNA8rg2czzGi8l+ma7VY
 LIeg==
X-Gm-Message-State: ANhLgQ0fv5/t86wfg1V91CG81e4fnb9lHFQjyezARieej/J64oLQ/kpW
 mVmOUteMxKM9aoKaQC6/MIMCwThchEU43Q==
X-Google-Smtp-Source: ADFU+vs6A0umEX92NAflVde74j2QO6U1RZ1hR68J+eUHZv3DFaYlmFYn9ftyyLviMKnLBYBZf/Qo+Q==
X-Received: by 2002:a4a:be8b:: with SMTP id o11mr698744oop.27.1583941122284;
 Wed, 11 Mar 2020 08:38:42 -0700 (PDT)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com.
 [209.85.167.176])
 by smtp.gmail.com with ESMTPSA id l8sm395923oom.30.2020.03.11.08.38.41
 for <linux-riscv@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Mar 2020 08:38:41 -0700 (PDT)
Received: by mail-oi1-f176.google.com with SMTP id r7so2332464oij.0
 for <linux-riscv@lists.infradead.org>; Wed, 11 Mar 2020 08:38:41 -0700 (PDT)
X-Received: by 2002:aca:ac89:: with SMTP id v131mr2417890oie.7.1583941120759; 
 Wed, 11 Mar 2020 08:38:40 -0700 (PDT)
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
In-Reply-To: <CADnnUqfJ=YvFSkpsCMDd9owAE_Pwxkn=mzJ8S2YvYqRff60xxA@mail.gmail.com>
From: Carlos Eduardo de Paula <me@carlosedp.com>
Date: Wed, 11 Mar 2020 12:38:29 -0300
X-Gmail-Original-Message-ID: <CADnnUqeBrJ9MwwDTY2rBkboAJHSwivuZ_Rk69C0sNGSRw1UR3Q@mail.gmail.com>
Message-ID: <CADnnUqeBrJ9MwwDTY2rBkboAJHSwivuZ_Rk69C0sNGSRw1UR3Q@mail.gmail.com>
Subject: Re: Errors and segmentation fault while building Golang on Kernel
 after v5.4-rc3
To: Atish Patra <atishp@atishpatra.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_083845_123762_ACEF6E61 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: David Abdurachmanov <david.abdurachmanov@gmail.com>,
 David Abdurachmanov <david.abdurachmanov@sifive.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 William Grant <me@williamgrant.id.au>, Joel Sing <joel@sing.id.au>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Feb 3, 2020 at 12:06 PM Carlos Eduardo de Paula
<me@carlosedp.com> wrote:
>
> On Sun, Feb 2, 2020 at 9:30 AM Atish Patra <atishp@atishpatra.org> wrote:
> >
> > On Sat, Feb 1, 2020 at 3:37 PM William Grant <me@williamgrant.id.au> wrote:
> > >
> > > On 2/2/20 5:58 am, Carlos Eduardo de Paula wrote:
> > > > Hi Atish, I've added that patch to latest OpenSBI from master, dd'ed
> > > > it to my mmcblk0p3 partition but still got problems building Golang
> > > > using kernel v5.5.
> > > >
> > > > [... snip ...]
> > > >
> > > > Did it worked for you William?
> > > >
> > > > Carlos
> > >
> > > Ah, sorry, I didn't actually test Atish's patch. It's not quite right,
> > > since .tlb_range_flush_limit = 0 implies the default is used. I think
> > > setting it to 1 should work,
> >
> > My bad. That's what happens when you are jet lagged and sent a patch
> > at 5AM without testing :(.
> > Ideally, it should be set to zero. I have fixed the issue in platform
> > header and sent a patch series.
> >
> > http://lists.infradead.org/pipermail/opensbi/2020-February/001060.html
> >
> > --
> > Regards,
> > Atish
>
>
> No worries Atish :)
>
> I've changed the parameter to "1" and confirm that it works.
>
> Built and tested Golang on v5.5.
> Carlos

Atish, the correction of the TLB flush sent previously will be
upstreamed into OpenSBI or is something that should be patched
off-tree?

Thanks

-- 
________________________________________
Carlos Eduardo de Paula
me@carlosedp.com
http://carlosedp.com
http://twitter.com/carlosedp
Linkedin
________________________________________


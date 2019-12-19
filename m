Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D563C125DA6
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Dec 2019 10:28:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4NG/PivYxkCtWiDfOFeqP0QaKag9pVxKakNKO49NZdU=; b=PMgNa2isFV0UCy
	JWYFK4xKmNQOccaWiwqTQGHg7quOG21247heDoNnuqGFdU+hLnpM3IfHfYoLjZYCh1kwVZU2FUshu
	iM1NfsdbLy1nNQtggyPcKlhzsklPP93rzSul6PY1p5mxw0IbOZSlSbNtWgUSzdgcjJACFHgNA7CMY
	JmCZdwqZPBTqejvflRPTA/Vc69UQU3+pDP+s1QeJRQgf2mrXiJg1HnXHr3hx4H6xELTMI86X2tiFp
	yN9hHDJZFfBe2oHy0LQcFo/QXKfemBMXP/7bPhhn/jF+qFE1i2HfVNrh1GPJlYV4XRuGthva4TOGu
	8ojjvTHqOJ2u8yQAZk6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihs6m-0004ZQ-Az; Thu, 19 Dec 2019 09:28:36 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihs6i-0004Yn-PP
 for linux-riscv@lists.infradead.org; Thu, 19 Dec 2019 09:28:34 +0000
Received: by mail-ot1-x344.google.com with SMTP id p8so6421847oth.10
 for <linux-riscv@lists.infradead.org>; Thu, 19 Dec 2019 01:28:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=4NG/PivYxkCtWiDfOFeqP0QaKag9pVxKakNKO49NZdU=;
 b=NGr0hpIuFGqTH5s7amSerqKFDh/YonkvcYyXH/q3HlE8g2B+rRINRCM+aEY2sTpCtY
 QwATozuhn7NkVo/TnMznFjGXvY/VzQDqt1iHq6yzJUez6WmxcB2IBtUuYMWxNEgvtCma
 M39Skgpq0KThdjQ13pTWkzVsDNCtpqyZYf6jiqE4C7PsxwLINHa0kxOvv9YGa+/21gSL
 1XmB/LRoo7cMB/prENRkBRASCmJE/z/3KVxpvmWjixtUBAymmlTXlzWTiV6s6vEgLKRK
 bY4QBoJZp13sjRiQg3kAjiYHN8le3f113ZEM8+l+3rKJYvXL5TaJX1H3eBUktvQeWZ0h
 RyAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=4NG/PivYxkCtWiDfOFeqP0QaKag9pVxKakNKO49NZdU=;
 b=ZcrrIO5XK/3Epq82SSYMjbXatn6kmPAIY1xG0WdHTg/VDLslO65G7jtP161deUXdfL
 +CSEYagqE0oJ+/ruklrqaqQWHDF0+jygLotMI9b/ADsc4ktuFYqEqqOliPn1F0MwxkWL
 0dxbYFwr7kvoyvZIumNg3DaMAf6hHeumynJrtJwZSWdVLD33cp7UwA1CD2DvAPq1hzPr
 Hem/8KaTOhWLEbl9jSGmov9Hb4OK9eOQgMzcAoyDGcseH1ye4bOuMIpq8T70h/ambnRh
 GgIrrUL5tJahP6/f8VIKMVM2QrDb6pqDOFNFV0CRxXQnGv4XeTgaH16Z1hPkoIJC2YAf
 rGrw==
X-Gm-Message-State: APjAAAV526kc2MH6q4Pg6qVgiyUFUvpL1jdfcTViQ/dy9ycjq7AvPu2V
 HXwQvPM424GW6cbtZlz2We0eFfP7V/cxFjVyEr+e1A==
X-Google-Smtp-Source: APXvYqxQeYkVBCOJ2lu6Zf3i4gHTNpgbTHBMZMkf0eV/mIYwH83FHnbi1u0qAnU6+23PmkuwLxdKornUp6YobuVq5AI=
X-Received: by 2002:a9d:784b:: with SMTP id c11mr7516541otm.246.1576747711110; 
 Thu, 19 Dec 2019 01:28:31 -0800 (PST)
MIME-Version: 1.0
References: <20181113195804.22825-1-me@packi.ch>
 <20181113195804.22825-3-me@packi.ch>
 <20181114003730.06f810517a270070734df4ce@kernel.org>
 <a6abc4ce-4398-5ca6-992b-efb31e01c5ca@packi.ch>
 <20181115004141.5ed772834fc6bdf3467f244e@kernel.org>
 <CANXhq0qWwKRrz80Q3LSeQu-cH19otCF1my6dDGDxH0Q5j1RYYw@mail.gmail.com>
 <9cdd84b5-6c81-9bfa-5d35-6645f542f71e@packi.ch>
In-Reply-To: <9cdd84b5-6c81-9bfa-5d35-6645f542f71e@packi.ch>
From: Zong Li <zong.li@sifive.com>
Date: Thu, 19 Dec 2019 17:28:19 +0800
Message-ID: <CANXhq0peZCWZsh37zZVzoi7spSzTfz7v4H5AytiAENKJdWK_tA@mail.gmail.com>
Subject: Re: [RFC/RFT 2/2] RISC-V: kprobes/kretprobe support
To: =?UTF-8?Q?Patrick_St=C3=A4hlin?= <me@packi.ch>, 
 Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_012832_853601_E144D6D4 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Greentime Hu <greentime.hu@sifive.com>, linux-riscv@lists.infradead.org,
 Albert Ou <aou@eecs.berkeley.edu>, Anders Roxell <anders.roxell@linaro.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Dec 18, 2019 at 9:10 PM Patrick St=C3=A4hlin <me@packi.ch> wrote:
>
> Hi all
>
> On 18.12.19 10:14, Zong Li wrote:
> > On Wed, Dec 18, 2019 at 5:09 PM Zong Li <zong.li@sifive.com> wrote:
> >>
> >> From: mhiramat@kernel.org (Masami Hiramatsu)
> >>
> >> On Wed, 14 Nov 2018 21:52:57 +0100
> >> Patrick Staehlin <me@packi.ch> wrote:
> >>
> >>> Yeah, I think it's simpler.
> >>>
> >>> And I found that the kprobe_breakpoint_handler() was called without
> >>> checking !user_mode(regs). In that case, you should add the check in
> >>> front of kprobe_breakpoint_handler() call.
> >>>
> >>> Thank you,
> >>
> >> Hi all,
> >>
> >> Is there any update? I was wondering if this patch are keep going? If
> >> not, I think I could pick it up to go head
>
> I am still working on it, albeit slowly, holiday season coming up here
> in Switzerland may accelerate that a bit. All the feedback I got from
> Masami has been implemented.

As Masami's suggestion, I don't see stop_machine in your implementation [1]=
,
are there some concerns to use it on SMP?

> Additionally I added instruction simulation for everything except memory
> accesses. I am currently working on getting compressed instructions
> decoded properly into regular instructions but that is very tedious work.
> I guess I am two or three full days of work away from getting a RFC/RFT
> v2 series ready I guess that will happen in early January.

Thanks for the efforts.

>
> What I currently have is at [1], that is mostly untested as of now
> (beware I will rebase/squash that branch regularly). What I could use
> help with in the future (as in for v2), is somebody testing it on real
> hardware, as I've never gotten any testing feedback on my original
> patch-series (that would not have worked properly because of the lacking
> cache-flush).

I give some quick tests by using kprobe sanity test and simple LKM on
Hifive Unleashed board,
it seems to work normally. I could help to test your next version patch as =
well.

>
> [1] https://github.com/packi/linux/tree/kprobes-riscv
>
> Patrick


Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0469A16282B
	for <lists+linux-riscv@lfdr.de>; Tue, 18 Feb 2020 15:30:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=T8qsQsLgXVUyyjhNR7vwb/CrN1mkz/DvLTktVNEStZM=; b=NiipvPsLDoYdIQfdgkdJAloa9
	3J9hCuN61+VHeL7OLjHTd6Fe326jTmeMVtP/3CTOk3h+BrZ9zIkkUGg0NvkJ9UytbiaXTBKi/nmPg
	YgXLMxTQJH2XEGM7cpvSs2OOzLkywhub1okNox9QELpuXJH5suC/xxvjUenSVdVJEPGB6+QV3PUsT
	IYx9WDCsWiFIBLlGmb6sEJxS78FIf2Ec91XM7G357BEkKAeBdXUhHpMjRerG5Xx5MT5Q0sJ1is+lt
	c4X9XxB2HeiKppfEtl8rOoznofqLdpXju4sAnhiy8Y9TDCXV9Z6MbYh5P2slPfBActD57lST+S9Z3
	CrLLmOmIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j43tl-0006hL-Ik; Tue, 18 Feb 2020 14:30:53 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j43tg-0006gv-Rt
 for linux-riscv@lists.infradead.org; Tue, 18 Feb 2020 14:30:51 +0000
Received: by mail-ot1-x341.google.com with SMTP id 59so19669359otp.12
 for <linux-riscv@lists.infradead.org>; Tue, 18 Feb 2020 06:30:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=carlosedp-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=T8qsQsLgXVUyyjhNR7vwb/CrN1mkz/DvLTktVNEStZM=;
 b=uYO8dX5HRC4mpmH2SdDwNbz/pTXcCZERVAfDgOojtTRHjOL8Y0bM4AYsr9TuKNuFQ2
 Tw6ThnoqWmQASbqP2nOcGFX6LNSMnJhmzrphBy3gR+q8fzXj8w5alhranYIOsTSEQTfl
 jL0X9sDP0y0nJNVO03ZhysXgIIbegfSWCDOqLYAlF7XJzsd1Y9LpKut/JNM2bG4vOpfo
 alhq//uG2xw8WWHnby6mgg1d/jDc5h4f+W+en+g470Yt1Rfv+FEOwq+qhN0O8MDnmbQq
 NkXOkj0OQkpw++UjBuQvwn9C9f6OgU8RYhg2ZMNLtIBrSldJ/qSJw9ojqCCrqQy7H59d
 Vp7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=T8qsQsLgXVUyyjhNR7vwb/CrN1mkz/DvLTktVNEStZM=;
 b=jE0qyZwWv18duw6gsQfS1PgGoonPTfaJmkvLmkU40gEbHV3ttNhgRGKzV6pJQQQ61U
 g+UGz3gbMacgdWhT1j7G/8LgQjPBQNj5iPuitBBxZUQPnPoHNMsbWybZXSpk6cbP1o8T
 RtJ1BC7YZcO0TOzLx/Xvp1FRGfQjWpujfbAbhCmC9QkiNxFfMBom2tgcL36PBWi39tDl
 uvHFRGO2Ng+1r0yhkNYgTlxh/3ZzeO2SOn8K4pXAi582scHDfGYV1/z7z8Z3sQqbzjyt
 wIxTobJd5jLc5AmKlFUyJHz0u1PMBO03kXh5S85G5+8ePPLwzabvqI4AQKDh7vKidN18
 jYJw==
X-Gm-Message-State: APjAAAX82EuflFh6dd00P847XavKMqWOqbyBeCRmBBbzijVjUx6/ItuE
 XjlrqpTg1hrB91CxUwt/2s9HSglXdPxXYQ==
X-Google-Smtp-Source: APXvYqw+/YFg8/QsDyhwhhazqWQVQHgN6spi0NEoxj6XUY+ZDW7rdTINTyvG11u0goVWvPL4vVWUnw==
X-Received: by 2002:a9d:7305:: with SMTP id e5mr15216451otk.64.1582036245982; 
 Tue, 18 Feb 2020 06:30:45 -0800 (PST)
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com.
 [209.85.167.177])
 by smtp.gmail.com with ESMTPSA id i2sm1390104oth.39.2020.02.18.06.30.45
 for <linux-riscv@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 Feb 2020 06:30:45 -0800 (PST)
Received: by mail-oi1-f177.google.com with SMTP id q84so20280062oic.4
 for <linux-riscv@lists.infradead.org>; Tue, 18 Feb 2020 06:30:45 -0800 (PST)
X-Received: by 2002:a54:4e8d:: with SMTP id c13mr1377198oiy.27.1582036244931; 
 Tue, 18 Feb 2020 06:30:44 -0800 (PST)
MIME-Version: 1.0
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <20200212103432.660256-9-damien.lemoal@wdc.com>
 <48e10b3d-12f3-a65c-8017-99c780c63040@gmail.com>
 <BYAPR04MB581671F46D3FE67FD3C8B2B7E7140@BYAPR04MB5816.namprd04.prod.outlook.com>
 <bd74c841-2447-2f11-f924-a501230b3927@gmail.com>
 <BYAPR04MB5816ED294439828E562EB085E7140@BYAPR04MB5816.namprd04.prod.outlook.com>
 <CADnnUqe3AbTStJg9LS4qupH-OnBDGjuEFbnX8EXW8MUr4kwoGQ@mail.gmail.com>
 <19e78a77-4b7f-a057-eb6e-7384f3fc67c1@gmail.com>
In-Reply-To: <19e78a77-4b7f-a057-eb6e-7384f3fc67c1@gmail.com>
From: Carlos Eduardo de Paula <me@carlosedp.com>
Date: Tue, 18 Feb 2020 11:30:33 -0300
X-Gmail-Original-Message-ID: <CADnnUqfSq5sNXMQLktU0R_XLvYrf00nqMG5UPkTwaeL-Cy1m_A@mail.gmail.com>
Message-ID: <CADnnUqfSq5sNXMQLktU0R_XLvYrf00nqMG5UPkTwaeL-Cy1m_A@mail.gmail.com>
Subject: Re: [PATCH 08/10] riscv: Add Kendryte K210 device tree
To: Sean Anderson <seanga2@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_063048_904768_B3BED574 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, Anup Patel <Anup.Patel@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 11:18 AM Sean Anderson <seanga2@gmail.com> wrote:
>
> On 2/18/20 9:12 AM, Carlos Eduardo de Paula wrote:
> > Maybe it's a known thing but I found an MMU implementation here:
> > https://gist.github.com/44670/0d8c152df7c5b59d17d469aba4dda0e5
>
> Yeah, that's part of the evidence which convinced me to research the vm
> capabilities of the k210 after I saw Christoph's series was NOMMU.
>
> > Comes from as fork of the sdk here https://github.com/44670/libk9
> > implementing also the LCD and other peripheral support.
> >
> > Might help out adding support to it.
>
> Hmm, maybe. I've been wrangling a bit trying to get the SD card slot to
> work.
>
> --Sean

Yes, I started looking at the SD card but had no clue on what needs to
be done regarding GPIO - FPIO - SPI pre-reqs for it.

Wladimir (don't know his email) started playing with UART1 interface
to the 8285 module to allow WiFi communication. We thought about
having a TUN/TAP interface over it to bring the TCP/IP stack up.
https://twitter.com/orionwl/status/1229442145628585990

Carlos

-- 
________________________________________
Carlos Eduardo de Paula
me@carlosedp.com
http://carlosedp.com
http://twitter.com/carlosedp
Linkedin
________________________________________


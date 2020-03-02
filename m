Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D451D17529E
	for <lists+linux-riscv@lfdr.de>; Mon,  2 Mar 2020 05:22:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nd9s4XDYFcsWj16HJC+P49Mr0vdhXuiqGiwz2zc9/EI=; b=W+/uBy5/r8SfHVp8aHLHltmHs
	aoALOjoDAxfsXvJJcx8CwF7kxPl8iJKN56qN+IULtn4osVvv9EwRLRn+9x9Vn+PN1A0pEW/B9UOJj
	fzONlpd9Nca/BqHtRoSHBRNNa9D7BjVO8JJSl1Mo//NfgWHxj6BbAoXx0LUe1n8svk6B+VhCPxlXr
	TL3AgSzOsdGopehJwp2w9QmQbsPpLbcvoqYzKnsoHGxfCswwRoLT6waZ/i+xIq8jyPXSStedO6oJM
	V/QxN3OMKRT4sdcnFji5Czmq4J2wIMVlolaEVjOlmRjCQr9b871ppajhGc85MeJRNNqpcdIs9w+8r
	w4s/Pnv/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8cb3-0003uu-A7; Mon, 02 Mar 2020 04:22:25 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8cax-0003q2-Pj
 for linux-riscv@lists.infradead.org; Mon, 02 Mar 2020 04:22:21 +0000
Received: by mail-wm1-x344.google.com with SMTP id a25so1586262wmm.0
 for <linux-riscv@lists.infradead.org>; Sun, 01 Mar 2020 20:22:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nd9s4XDYFcsWj16HJC+P49Mr0vdhXuiqGiwz2zc9/EI=;
 b=0gVDQIJJyYFF7jqcsmWA9I2q2yXMA950a7U3uh5laz8Qf1Y8Z5LlGP5BxBR2N11VR9
 UYu/OdEnBj2DOQtGy79vgu/Ck3QdXzGOlYvi8k4QlnJ9YsHBNVgvchEERlGnVshqSml1
 gDu/fgp7vQVn2MGNlbotQqvD8l52veuV3CWfnhA2HGU/+yMOjjgUinz8yvEYXNBNKZ4T
 JJBHtZpZsPIh/UEH21cBaYR6LYs5EM/csBNvlQCebfRxN7rfziCpqUevStF8PtJcOkjW
 jAkGmDinOfaZ7O6LZ1l+ZqsHE9tIEJKVhUoIfJDhPxiKa3kch4s9hw0LKD0BpgNplLlB
 uRTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nd9s4XDYFcsWj16HJC+P49Mr0vdhXuiqGiwz2zc9/EI=;
 b=TFBi9jFseQ2HLLwc5pncPi13oJPbgKtz9hgSehuDTWRrWiCWVOapql3AEMrQIyiDej
 XeYGvhrc0ihbetFMvGUdN4MSowr/z/B3HlpJM+didtk2Od7etVWr4TX5gNt2iuAgqrhI
 aGdUofYPOmYEm6K7CRJQv2V6QGnHJ4UIZGRr8YyPuelOyd/PSn2+yNrMuOT1AiSCIEbg
 eaAAu2iM2bYHqsZtWJChx/uEE0etkMDiSNMSjbv0J05inp3xuh2zQLWLUqJtfm4HyfMU
 0a3v2hnspXwwkgRK0xfoFeyhoSdKTXHfCmHCUdWJDvd/xAZnKCvxKhhy4WkNwFEVHSFO
 2EYg==
X-Gm-Message-State: APjAAAVWm2WgTIqDqfahVt7Fu+HlOmI2g5/ggg2wpGr3PlqT3Ek6zUEf
 jIEcl6zdCgCCHhX6hCPRDwaUx7zMBL9pfMEfYJnELA==
X-Google-Smtp-Source: APXvYqytG+msZ+5tAQaaV7J/XB2470bl+wegmc8s6sYSsbdSRiNBwL59iWf0lsnLeSFlrPLN3YhekoTJpjyvr/jIBG4=
X-Received: by 2002:a1c:1984:: with SMTP id 126mr17984462wmz.78.1583122938051; 
 Sun, 01 Mar 2020 20:22:18 -0800 (PST)
MIME-Version: 1.0
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <20200212103432.660256-9-damien.lemoal@wdc.com>
 <CAAhSdy2sP5L2ijtOC3wcYZVcf=0KfAobHzKC+CrAYLvmAO9cTg@mail.gmail.com>
 <BYAPR04MB581624CE07B742A7D1B1F53DE7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
In-Reply-To: <BYAPR04MB581624CE07B742A7D1B1F53DE7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 2 Mar 2020 09:52:06 +0530
Message-ID: <CAAhSdy0Owsfa6wGyBnHoOONN3uc93YwXpnGto_U5OE3tTwnGYw@mail.gmail.com>
Subject: Re: [PATCH 08/10] riscv: Add Kendryte K210 device tree
To: Damien Le Moal <Damien.LeMoal@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_202219_890789_83ACC845 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Mar 2, 2020 at 9:46 AM Damien Le Moal <Damien.LeMoal@wdc.com> wrote:
>
> On 2020/03/02 13:07, Anup Patel wrote:
> [...]
> >> +       sram0: memory@80000000 {
> >> +               device_type = "memory";
> >> +               reg = <0x80000000 0x400000>;
> >> +       };
> >> +
> >> +       sram1: memory@80400000 {
> >> +               device_type = "memory";
> >> +               reg = <0x80400000 0x200000>;
> >> +       };
> >> +
> >> +       kpu_sram: memory@80600000 {
> >> +               device_type = "memory";
> >> +               reg = <0x80600000 0x200000>;
> >> +       };
> >
> > No need to have separate DT node for each RAM bank. This can be
> > express as single DT node as follows:
> >
> > sram: memory@80000000 {
> >         device_type = "memory";
> >         reg = <0x80000000 0x400000>,
> >                   <0x80400000 0x200000>,
> >                   <0x80600000 0x200000>;
> > };
>
> This is to match the U-boot device tree that Sean wrote. So I would rather keep
> it like this. And strictly speaking, if one wants to add a driver for the KPU,
> having the kpu memory segment for it separate makes it easy to reference it from
> a kpu device entry. But granted, the two sram segments can be declared with a
> single memory entry.

But, that's not the preferred way of describing memory banks on the
same machine.
Usually, we create multiple memory DT nodes for NUMA systems.

You can also refer various ARM/ARM64 DTS files.

Regards,
Anup

>
>
>
>
> --
> Damien Le Moal
> Western Digital Research


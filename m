Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B42D61752F5
	for <lists+linux-riscv@lfdr.de>; Mon,  2 Mar 2020 06:05:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Qes9F6SwzAd2K4tIxc7eSfRILiBtvaFPgNen6S64XuY=; b=hcESniCuP3S25bj3V3PaDYtuX
	5wDJdo8MnU5BHaozyUYrio1oaZuM1sGJtJg5VsosFwL0Qu0sB38DHAfHsn9CiwjHLpAhb3aqGaoI2
	3SOgLh94zKVwCJBNdL+/7HW+uiiIUefo51VH3EJETYJkjShMY6mN7tjl5N85rXzttAIVObsDC8iuL
	6mIl5LVoly8NqCXH1SM56ccCX+JRWfQhofM1Rh3cc53L1juhiICQSHw145DThSNr9bEr/OHMKOoz5
	Kd/7Mlu30l/uif9Y1dqqQHFWhsPBjBnWJSzX7GihPocyvwixleMT1ZoAy2b7fArDOaGvaz3+Aj6ZC
	JXDc1xA3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8dH3-00037N-P2; Mon, 02 Mar 2020 05:05:49 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8dGz-00036p-Uc
 for linux-riscv@lists.infradead.org; Mon, 02 Mar 2020 05:05:47 +0000
Received: by mail-wr1-x442.google.com with SMTP id v4so10782738wrs.8
 for <linux-riscv@lists.infradead.org>; Sun, 01 Mar 2020 21:05:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Qes9F6SwzAd2K4tIxc7eSfRILiBtvaFPgNen6S64XuY=;
 b=vEuGllUr/UF19hhox0sSeAgc10DzcJu3VkP3h12rXx/aRyAAbuRaJGYY8ggwJbTMr+
 AtTNy0DnRDhjQNfmLCvNfnN4Z66Yp5sx2EHDH0w8qF0i4VffSpV4dafUh3K9R1Ta6I2n
 BL7+H7lTvwyHgKaS0+6h5JYSOX2NJJF5HvvuAbOAMtnnQGgb79HoCadeKDnODW398QLH
 QM0pXQF/DqFtqHBAsIhvgPYzI0bZgwgDjwD5JJpaemUaDbi/7OHHJOmwZA4JRVrq5QL1
 Z9Zx8dOZJG2Qd3RHe4cVHly155BhU7GGdO7h0hi4sxzurpQx96/Okav8quPkXH9/fowG
 VhzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Qes9F6SwzAd2K4tIxc7eSfRILiBtvaFPgNen6S64XuY=;
 b=Mkr+Q3YSPK1f+IpxHzkXf6CG6DM3TFK9AqIAYU9b5MHh0uVccnCkrwLkSCIBe5xog0
 boT7YpEYXg9SAO6visQ6yDpbZ7UAS/NuPXSCeyOdT8kojgi5JZYxeKwNhrg95LBAUzsW
 SDm9mAwA+jBwuNpJHpROZ7UwkX9vcHVjR44hDbTRLuyCkSboAA1/H6T4mjG5GA4QTyyt
 fl3VGl1Xv+So17DRByw76yXrovmb07l3OrohZK1ooBKHPY7S8pqci3sWzUned24qw/Tm
 LhkrAF7EgX04W86YKhLvub6cT95V2sbqZykWeQ7gZM7cw104o2fYwyaLnj/LhmZ11FJh
 fUfQ==
X-Gm-Message-State: APjAAAUg2qddUIZ2PjHIpCZRbR63a0gNGYIkdaSeFvm6rPV5MWvdxMuF
 nrNIuGoXE+1L2xm4hbyCP+lt6sQSN+nnYfgFy2pHZA==
X-Google-Smtp-Source: APXvYqyncJPPapy5SxzQps1LN4WFzs6f4DfweYQYsjSeyyupmEx9K8UAPoyRU2Vc61RTkUmbuEK3SF2cU5HYwSf0E9A=
X-Received: by 2002:adf:e90d:: with SMTP id f13mr21277841wrm.0.1583125543312; 
 Sun, 01 Mar 2020 21:05:43 -0800 (PST)
MIME-Version: 1.0
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <20200212103432.660256-9-damien.lemoal@wdc.com>
 <CAAhSdy2sP5L2ijtOC3wcYZVcf=0KfAobHzKC+CrAYLvmAO9cTg@mail.gmail.com>
 <BYAPR04MB581624CE07B742A7D1B1F53DE7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
 <CAAhSdy0Owsfa6wGyBnHoOONN3uc93YwXpnGto_U5OE3tTwnGYw@mail.gmail.com>
 <BYAPR04MB5816A2497FA764FB145D350FE7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
In-Reply-To: <BYAPR04MB5816A2497FA764FB145D350FE7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 2 Mar 2020 10:35:32 +0530
Message-ID: <CAAhSdy2eGOifb6Ov6hfy=-QsjvFCKgZqqX1tiq1Z=wFrLpz9CA@mail.gmail.com>
Subject: Re: [PATCH 08/10] riscv: Add Kendryte K210 device tree
To: Damien Le Moal <Damien.LeMoal@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_210546_128549_0B7865CF 
X-CRM114-Status: GOOD (  21.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

On Mon, Mar 2, 2020 at 10:21 AM Damien Le Moal <Damien.LeMoal@wdc.com> wrote:
>
> On 2020/03/02 13:22, Anup Patel wrote:
> > On Mon, Mar 2, 2020 at 9:46 AM Damien Le Moal <Damien.LeMoal@wdc.com> wrote:
> >>
> >> On 2020/03/02 13:07, Anup Patel wrote:
> >> [...]
> >>>> +       sram0: memory@80000000 {
> >>>> +               device_type = "memory";
> >>>> +               reg = <0x80000000 0x400000>;
> >>>> +       };
> >>>> +
> >>>> +       sram1: memory@80400000 {
> >>>> +               device_type = "memory";
> >>>> +               reg = <0x80400000 0x200000>;
> >>>> +       };
> >>>> +
> >>>> +       kpu_sram: memory@80600000 {
> >>>> +               device_type = "memory";
> >>>> +               reg = <0x80600000 0x200000>;
> >>>> +       };
> >>>
> >>> No need to have separate DT node for each RAM bank. This can be
> >>> express as single DT node as follows:
> >>>
> >>> sram: memory@80000000 {
> >>>         device_type = "memory";
> >>>         reg = <0x80000000 0x400000>,
> >>>                   <0x80400000 0x200000>,
> >>>                   <0x80600000 0x200000>;
> >>> };
> >>
> >> This is to match the U-boot device tree that Sean wrote. So I would rather keep
> >> it like this. And strictly speaking, if one wants to add a driver for the KPU,
> >> having the kpu memory segment for it separate makes it easy to reference it from
> >> a kpu device entry. But granted, the two sram segments can be declared with a
> >> single memory entry.
> >
> > But, that's not the preferred way of describing memory banks on the
> > same machine.
> > Usually, we create multiple memory DT nodes for NUMA systems.
> >
> > You can also refer various ARM/ARM64 DTS files.
>
> Oops... Sent an answer to this to the wrong email... Here it is again:
>
> Yes, I understand. But in the case of the K210, that last 2MB segment is really
> special as by default it is not usable as regular SRAM. I think it may be better
> to reflect that in the device tree. The K210 soc_early_init() call back can
> probe for that special entry too to see if it has to be turned on for use as
> regular memory or not (i.e. if a kpu driver will use it).
>
> Since booting Linux with 6MB of memory will be even more challenging than with
> 8, I agree that we may never see the case of a kpu driver being used. But I
> personally like making that special case clear in the device tree. No strong
> objection to your simplification though. So if you really object, I will go with it.
>

I understand that it is helping you to distinguish last 2MB segment but this is
also possible using with single memory DT node as follows:

sram: memory@80000000 {
        device_type = "memory";
        reg = <0x80000000 0x400000>,
                  <0x80400000 0x200000>,
                  <0x80600000 0x200000>;
        reg-names = "sram0", "sram1", "kpu_sram";
};

The K210 soc_early_init() can do the following:
1. Find memory DT node having device_type = "memory"
2. Find bank number for "kpu_sram" based on "reg-names DT property
3. Get based address of KPU SRAM from "reg" property based on bank
number found in step2 above.

The reg-names is a standard DT property used to distinguish multiple
memory regions of device. Same can be used to distinguish multiple
banks of memory DT node.

I am not adamant on having single memory DT node but just wanted
to let you know that this is not a preferred way for non-NUMA system.

Regards,
Anup


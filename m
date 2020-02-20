Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7000F165C1A
	for <lists+linux-riscv@lfdr.de>; Thu, 20 Feb 2020 11:48:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AgMGddTxX2SEP8AbvaxBiOMoEOJ6GTa68i314QGrXe8=; b=P1JBO/Gv/4ZDSurA2tHRRYElE
	SmjcGUmI4GUXFRIitnPq98t6crefaQfnlgjYvrwf8LwJs4Z432W7oLz0C+g0eGXYZbqET68AeFd7D
	CjYGsvQUQuNujoZJVZabP60RgMU2KzSeKEK0jISEC0cw94kEM22wnAArLty4QPuYcFh4tjvwlVa+F
	lF303GunQI4TPQhmp8sCMgcfwK1iXq3ep7jBYDKscN5dn6QrJ0KeBEsbf7XM06+khrRWUN+qmQMld
	5ldZRzzX39mZBZGENIH/57fe1McW+63h1KDsWCQY/oAfmNYZu1m+gAe2Rg1NQ9PHjIvBVmbsnVHNJ
	j01tsSy6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4jNS-0006lb-Vb; Thu, 20 Feb 2020 10:48:18 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4jNQ-0006lB-5G
 for linux-riscv@lists.infradead.org; Thu, 20 Feb 2020 10:48:17 +0000
Received: by mail-wm1-x341.google.com with SMTP id b17so1506529wmb.0
 for <linux-riscv@lists.infradead.org>; Thu, 20 Feb 2020 02:48:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=AgMGddTxX2SEP8AbvaxBiOMoEOJ6GTa68i314QGrXe8=;
 b=FBdQoGjKr9SMRae8CxwFnZvHjpfJ3KhiBM3LuH9JgpEgwWryBB9Tcw1wOXxwVp4ok+
 KS2xKlhHwSH9LyffI58tnMC/HX8M2TImMM6JAx/XZ4wfnhgxUF7zVZhr/PMRRHvWm1TO
 tJXq+OFWKamNa4AUVpfJsrwHzulYAabmZPFtUGAHeMbgPgslXWyZ2ENd56bu2Fi7TfaH
 240KoyF/OgVHHxKvkhFWX/L1MNHSlye3vMWklYo3yYyafnfJ+fQvphYjczl+pROUtl9d
 2KPzohs124Kz0bEjH55uHqtn0sZbWoT0vPliD4Vw+ixZgeZ3poL71M5lRLjlXy83vO3s
 AguA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=AgMGddTxX2SEP8AbvaxBiOMoEOJ6GTa68i314QGrXe8=;
 b=FgHTveQzW1k5w/otVB2tJ67007o9ILYQdULy2l86TfUHwhJOXs/hRr4hMuCJJyUq8Q
 t2vPE27C0OiGGg5SkCMbXjtgfIqenFdQcKLvOP6cMsQHBmHO6zz1UWD7wNEIrlHuxxOw
 tWdS9mZKVrl+tuABCkxC0OdhLt/2DysE9bntSlSeTLtjUDCgqR5AAVXVmL6L4MKJspJb
 +gBzzB+1LYmoL1AqJGPz6tDSNxfisL3g0SCht5OzwuI/ChrhGeVqrxEHq0zXcxvleazx
 InPqKnF8SQVYlMTnk2+2pXLQUQxQkscZXxlKIfs4GDc9k/ptrQ+f+ogXH+vk8XTvtVaZ
 3x2g==
X-Gm-Message-State: APjAAAVJp9vyD7KxaO7Viqs7LRJkYB0iTsigbcdG30D/1IEWTrgefmGF
 At3N/BCooh8HenOxfWsFzZg=
X-Google-Smtp-Source: APXvYqyzfpqUEE1Wv8C3rfEmoSrxJJi94D0eSrvozOTseEl2Ek4dSWOs6W1RYcmJuEI+ai36UzOcmg==
X-Received: by 2002:a05:600c:2c06:: with SMTP id
 q6mr3939426wmg.154.1582195694334; 
 Thu, 20 Feb 2020 02:48:14 -0800 (PST)
Received: from aurora.visucore.com (92-110-144-95.cable.dynamic.v4.ziggo.nl.
 [92.110.144.95])
 by smtp.gmail.com with ESMTPSA id f11sm3863972wml.3.2020.02.20.02.48.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 20 Feb 2020 02:48:13 -0800 (PST)
Date: Thu, 20 Feb 2020 11:48:11 +0100
From: "Wladimir J. van der Laan" <laanwj@gmail.com>
To: Sean Anderson <seanga2@gmail.com>
Subject: Re: [PATCH 08/10] riscv: Add Kendryte K210 device tree
Message-ID: <20200220104811.eb5goi52qrft74vj@aurora.visucore.com>
References: <BYAPR04MB581671F46D3FE67FD3C8B2B7E7140@BYAPR04MB5816.namprd04.prod.outlook.com>
 <bd74c841-2447-2f11-f924-a501230b3927@gmail.com>
 <BYAPR04MB5816ED294439828E562EB085E7140@BYAPR04MB5816.namprd04.prod.outlook.com>
 <CADnnUqe3AbTStJg9LS4qupH-OnBDGjuEFbnX8EXW8MUr4kwoGQ@mail.gmail.com>
 <19e78a77-4b7f-a057-eb6e-7384f3fc67c1@gmail.com>
 <CADnnUqfSq5sNXMQLktU0R_XLvYrf00nqMG5UPkTwaeL-Cy1m_A@mail.gmail.com>
 <8108cb8e-a909-24b0-f1c4-24a5bebf4e65@gmail.com>
 <CADnnUqenadntSrngNGjnu40inxZWK1Nm3T64BnyY114hEwC_Og@mail.gmail.com>
 <20200219090612.7onbaoygy6waumnw@aurora.visucore.com>
 <cabd9527-3df3-4e5a-4669-5c14ed44e94d@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <cabd9527-3df3-4e5a-4669-5c14ed44e94d@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_024816_224455_0A5DE866 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [laanwj[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Carlos Eduardo de Paula <me@carlosedp.com>, Anup Patel <Anup.Patel@wdc.com>,
 Damien Le Moal <Damien.LeMoal@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

> > BTW speaking of which, does anyone know what's up with the K210's DMA
> > controller? It looks like it can only transfer 32-bit values from and to
> > peripherals? At least the kendryte-standalone-sdk goes to great lengths to
> > first allocate a 32-bit buffer then manually copy it to say, bytes or 16-bit
> > words. Seems quite a silly workaround with a lot of overhead.
> 
> Do you have a link to that section?

It's not really one section but all over the place in all clients of the DMA.

See for example the SPI here:
https://github.com/kendryte/kendryte-standalone-sdk/blob/develop/lib/drivers/spi.c#L372

Or serial (this one tripped me up):
https://github.com/kendryte/kendryte-standalone-sdk/blob/develop/lib/drivers/uart.c#L265
https://github.com/kendryte/kendryte-standalone-sdk/blob/develop/lib/drivers/uart.c#L163

One can fairly reliably find them by looking for 'malloc' in the drivers.

A few months back I did some experiments with different values for transfer
sizes and such and wasn't able to get the DMA controller to do this, myself.

The "FIX_CACHE" define is new, BTW. They don't DMA directly from/to cached
memory anymore but use an intermediate copy in uncached special I/O memory in
the 4xxxxxxx range. I haven't had problems with e.g. manually DMAing to the screen
through SPI myself but there might be a coherency edge case (their commit messages
are not exactly enlightening).

Kind regards,
Wladimir


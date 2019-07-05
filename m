Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFFF660716
	for <lists+linux-riscv@lfdr.de>; Fri,  5 Jul 2019 16:01:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RycFc5Dben0/cUWEEsrCCeZ1nYdjbbhjzmfHNT+YB1I=; b=nGDeC3eVoCIvJ/
	9ClmD5yrooNiEBjhhQHidK1kbNoa0YSsowwZs1kj+tHfsNjzeHlVYXk8Pr61kMswqV2i4a7N4aaAW
	v3y8ONF8fQUGe4sof4f5fJTT4KKVH1/JPYsrR1pQCYW8qHElRozjPHLAHl3ePOlosdx/hq87SsLCO
	yOSENubXN9ddYlxVnwlbE4ooLXL8y+ZxvR0W50mBHIFiFs5vjxHNjwOPdJnER9hsVa92VgLropPm2
	T/VApBCzyO5PhfwtCHTMs+DeFdY3mZv13snlnI7UYmtCiQTAnMJwBNus0pdim1Q9wIq63lfoky8sd
	bw2pCYRfkT9/wysasRww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOmT-0005ib-BD; Fri, 05 Jul 2019 14:01:41 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjOfc-0004tI-6T
 for linux-riscv@bombadil.infradead.org; Fri, 05 Jul 2019 13:54:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5nGqMOGRrREtq0FFSgC4UXuJiabbKTxeO2VC6p8bpug=; b=KTPkNE+NuTUi38kmmYxIC/Sce
 FqooGxN+AF1JadwQCjpqxqF+f7BGKlG2WhQRQu7g16oSm7Ol4nrGQmIZgyMUrHzgFDJGsU90rvsl+
 k+m4GCrL9wxeFECWMOk/Vqq/WAbAi8Cp7Rg5lMjYBngUmwJ9jPUboqk9tljuPdfHIGs0XD06DREv8
 RFhetpSICudyAZgzLKKdR24cCXahvdiJso9VTB5HYPRDjhINKUk14IVJVA6GF+C0YyF0ihAcxErBd
 qgZCdW0L7h/iAhHB+0ZatjrU3bsB2XbiU/c45rwseYkLSkN67MLv52YWt6B2QN2QlmIMG7wQzbyBS
 APa7ebgTg==;
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjGX9-0007ai-JI
 for linux-riscv@lists.infradead.org; Fri, 05 Jul 2019 05:13:21 +0000
Received: by mail-ed1-x544.google.com with SMTP id p15so7070357eds.8
 for <linux-riscv@lists.infradead.org>; Thu, 04 Jul 2019 22:13:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5nGqMOGRrREtq0FFSgC4UXuJiabbKTxeO2VC6p8bpug=;
 b=VH8WWlPYo7hQxS/xuOa2+ppxz4qfV+ZRE8ktONXDASmv+Zs7MSDdjZlSMTlaAi8E2R
 tXnUsRrzMg43HKo8Dj2YmUJQ2Tvl5TViA8CmJ6p//374KNqRkdhYCVqcoN4cCcQRPP9o
 MS5JmPvBTRN5sI0MHYDULjJH3YPwyFk9SL+jFeA2C97VlB//pWN2T3F8ntuVvn2dRNDF
 PRt5LFuouTuJl7xT+ETi20L6OUpglyhvIc5Ba185ynFJrVKjkMYcdaddXHWp+Nfx9lto
 GMxohs5UlpWOrTW9edyBNzp1VqHeNxMaAVc7eIgXiwxAmryfXgIiYpDL8Do2U/dtqxz3
 CO6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5nGqMOGRrREtq0FFSgC4UXuJiabbKTxeO2VC6p8bpug=;
 b=EYxyWKXgNNmWqaFphbueBlPDc38rQAIgWC9IMlWOa2I/eoWeC4AfZybivjEMKczLgr
 1XLS8UVHeS+2OStIB5yOd7HcqJwA+GKtgtB7gLtlBnVchpFvzgvvaZH9hUFcLccPHIvE
 E1768845hlHyfipfar+mGzEr1yIMKRX0sPfxUZ4TJOyek0Sffmo0KE3dkEjV476OMq6l
 0LO0bdaS3/U45OMv5pse3B4qf1bQorhnv55htnxXvwFeHmN5t2rz7gZmfBk21hlVdBB3
 kAxLWL8g3VWdKCwlAoZaz6YZIO+IuK++8ri6PMkmBaT3L0kXnW6dV2BvxYtXtvEwJq7c
 hd7A==
X-Gm-Message-State: APjAAAUzwO9voTMdH8r8QBPs/SGDbi6jBlZLuHsE4YIi41K6av38ZAjw
 PeHruZhpUPbXfsbIN4cfdi8S5+U6Cdkmi+4EhMg=
X-Google-Smtp-Source: APXvYqwhEclyD5r/MuRZrPMCFY8QPPhwXUvp0u0r3Z4aoXRwYr7yxzjq8rl2+VmBwY8yKsqS4N/RxGQughfvw+qdUWQ=
X-Received: by 2002:a17:906:fcb8:: with SMTP id
 qw24mr1572300ejb.239.1562303472975; 
 Thu, 04 Jul 2019 22:11:12 -0700 (PDT)
MIME-Version: 1.0
References: <1562298766-25066-1-git-send-email-bmeng.cn@gmail.com>
 <MN2PR04MB60611BD1B89E3D76ABFBE94A8DF50@MN2PR04MB6061.namprd04.prod.outlook.com>
In-Reply-To: <MN2PR04MB60611BD1B89E3D76ABFBE94A8DF50@MN2PR04MB6061.namprd04.prod.outlook.com>
From: Bin Meng <bmeng.cn@gmail.com>
Date: Fri, 5 Jul 2019 13:11:01 +0800
Message-ID: <CAEUhbmWdLoRU1QGVZtwmymtYyQw43UMR8WDB17rJRmvXGbuBTg@mail.gmail.com>
Subject: Re: [PATCH] riscv: dts: fu540-c000: Add "status" property to cpu node
To: Anup Patel <Anup.Patel@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_061319_683444_AD4B15CB 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bmeng.cn[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@sifive.com>, Yash Shah <yash.shah@sifive.com>,
 Rob Herring <robh+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Jul 5, 2019 at 11:59 AM Anup Patel <Anup.Patel@wdc.com> wrote:
>
>
>
> > -----Original Message-----
> > From: linux-riscv <linux-riscv-bounces@lists.infradead.org> On Behalf Of Bin
> > Meng
> > Sent: Friday, July 5, 2019 9:23 AM
> > To: linux-riscv <linux-riscv@lists.infradead.org>; devicetree
> > <devicetree@vger.kernel.org>; Rob Herring <robh+dt@kernel.org>; Mark
> > Rutland <mark.rutland@arm.com>; Albert Ou <aou@eecs.berkeley.edu>;
> > Paul Walmsley <paul.walmsley@sifive.com>; Palmer Dabbelt
> > <palmer@sifive.com>; Yash Shah <yash.shah@sifive.com>
> > Subject: [PATCH] riscv: dts: fu540-c000: Add "status" property to cpu node
> >
> > Per device tree spec, the "status" property property shall be present for
> > nodes representing CPUs in a SMP configuration. This property is currently
> > missing in cpu 1/2/3/4 node in the fu540-c000.dtsi.
>
> We don't need explicit "status = okay" for SOC internal devices
> (such as PLIC, INTC, etc) which are always enabled by default.
>

Yes, that's fine because those device bindings do not require them.

> Absence of "status" DT prop is treated as enabled by default.
>

But per current device tree spec, "status" in cpu node is mandatory.
(spec uses "shall"). Missing it is a spec violation.

Regards,
Bin

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

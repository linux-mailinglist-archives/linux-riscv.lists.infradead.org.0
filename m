Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7644683841
	for <lists+linux-riscv@lfdr.de>; Tue,  6 Aug 2019 19:53:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2dc0SHNxIldcOV3CFUS6gCqRbAV6OayBe1PjqndOEJ0=; b=j4jjIETi4VKTKs
	xSHypQTdoVF3h4ZzHqio3jSvyTX2csspSNCwpyn1FtbPXcBokReHNumfX7tyZBtijrbcTccqyJyZA
	/6jm7HNy0fagvooDTHvxilljEvIPfZLES/d1mE9ZN9z9pe5iP8rVgTrZ8fYnhlZIrwaJns4Kbi4ZG
	wZa7Z4UCeyew9hXprH6t/6bk14GVDvMQMKHaklyDymjRvZqPs1a23g3RrgdXlo02BNuZL1lPTKapc
	kRB/NU2JVIbOU1GIxGJ630E60L5xXjTRpD1uCvwwfAY9LhG981ToPxqvZBGvvFmVhSMKdiK7fqtLv
	Yw4qD5u4xlgLu8C29P4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv3e9-00032K-RJ; Tue, 06 Aug 2019 17:53:17 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv3e7-00031z-0a
 for linux-riscv@lists.infradead.org; Tue, 06 Aug 2019 17:53:16 +0000
Received: by mail-ot1-x341.google.com with SMTP id l15so94650675otn.9
 for <linux-riscv@lists.infradead.org>; Tue, 06 Aug 2019 10:53:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=Vidl/iliYyM68CgUWKBvBBZXppJjyGynlsyQn0zL3dU=;
 b=I6eRro/i9b5l7UEkPd5CFMM6sE/m4+ty7HmtFxtk4DET7OdwI+vvGL5k2jUAoHw8gM
 SVzWxV162RQwHTegKmfEWNIR9y4OZdPVGADYduSDqf2dBmpZ/W3r4VqYxTwBXTO9LW9l
 39LeYAS7yqNAubFXX7L5HAhp4Q1KJP36+QmpA76eHaXYET/2YhYoD5Qy2CCnjAR3AnGs
 TA4hG3S9eeXnVuhQ8Af1hs6E88x6afISJuHDVQaQw76ewbiPXYg52VndcpHWvk6Nw0dX
 Gzi/nJM7Jk5cOSqq44zqG1RySglVC1DDNYXw76iqR1BlOS4xozQ0DvPSHbnHzCyhJbHr
 90cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=Vidl/iliYyM68CgUWKBvBBZXppJjyGynlsyQn0zL3dU=;
 b=laQqxHQzWpc0/ntHko1ZFhUg7hghQhJOMLWAvfxCeubkYZUF76JnQDAukd+Km3GHyl
 F0Dz/YgAoE0RrUpRoCKuqGPu6xZMcauUGiazJxyK9NypplnGNVOrD8eaVPlhZS6AbTC/
 ZwUk+rySzzWnjoN1WlYKonH0u2WrS7Ulx23c8LWs35dytaZ3RtUEfJsEwNKfS8Iwb6pg
 hhYS7CVK+Dxg6lEo4hKbyRIf9+ZN1vOLmGXPfpD+sWxyUK+XnqRykaCsippXrunMKCks
 2vuCEiijQ2L0Agx7ohaiZ8cXj+hLEVv2hZ7jL+n/kGyUKMT5vTBhqWsmV63pWG5ZVOKq
 Zvbg==
X-Gm-Message-State: APjAAAXF2dAggrJqvxwjXcQFR/ZWb4Jq0O8d2I1qk+jvljnoYhAAtqRG
 tOLuni05TBwLpIniZJrCZfyVVw==
X-Google-Smtp-Source: APXvYqxii8Gup+YkcjZUXoNSg9trWA/r/DHmUTx1K1KeHy/IKb3PXSnw4Vs44XzqJoKBOYujCBkYSg==
X-Received: by 2002:a5e:a70b:: with SMTP id b11mr39589iod.286.1565113993921;
 Tue, 06 Aug 2019 10:53:13 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 t133sm124248306iof.21.2019.08.06.10.53.13
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 10:53:13 -0700 (PDT)
Date: Tue, 6 Aug 2019 10:53:12 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Palmer Dabbelt <palmer@sifive.com>
Subject: Re: About __udivdi3
In-Reply-To: <mhng-206638da-813f-4beb-bb68-ec2ff8fe0730@palmer-si-x1c4>
Message-ID: <alpine.DEB.2.21.9999.1908061051570.13971@viisi.sifive.com>
References: <mhng-206638da-813f-4beb-bb68-ec2ff8fe0730@palmer-si-x1c4>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_105315_068824_F7A44438 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: tesheng@andestech.com, dslin1010@gmail.com, alankao@andestech.com,
 rick@andestech.com, Christoph Hellwig <hch@infradead.org>, kclin@andestech.com,
 linux-riscv@lists.infradead.org, Jim Wilson <jimw@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

(privately)

On Tue, 6 Aug 2019, Palmer Dabbelt wrote:

> Yep.  I think the best bet is to just drop it, with something like this:
> 
>    commit f7f2185e0e3e60a8b77fb519a98b752242ade235
>    gpg: Signature made Tue 06 Aug 2019 08:06:30 AM PDT
>    gpg:                using RSA key 00CE76D1834960DFCE886DF8EF4CA1502CCBAB41
>    gpg:                issuer "palmer@dabbelt.com"
>    gpg: Good signature from "Palmer Dabbelt <palmer@dabbelt.com>" [ultimate]
>    gpg:                 aka "Palmer Dabbelt <palmer@sifive.com>" [ultimate]
>    Author: Palmer Dabbelt <palmer@sifive.com>
>    Date:   Tue Aug 6 08:03:59 2019 -0700
>           RISC-V: Remove udivdi3
>           This should never have landed in the first place: it was added as
> part
>        of 64-bit divide support for 32-bit systems, but the kernel doesn't
>        allow this sort of division.  I must have forgotten to remove it.

Just FYI, you probably already know this, but this patch was mangled on 
the list.  I'll reformat it and queue it up, but figured you probably 
would want to know if you didn't already.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

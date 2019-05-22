Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B69226AB8
	for <lists+linux-riscv@lfdr.de>; Wed, 22 May 2019 21:18:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DBkRBPpV27EFU0GXZUgKxK3Vt8ynO8HlBuuzKBkkONY=; b=NNlcNd1HL/NRSt
	iLCyTRAjKZY8QxjRbG6eFmhwCzuiORgkb5H/WvqtrG/jZfVSyHbcNpY3C9bCl0Saj9Kgu1+CO3IIu
	qK/UfBZbAdM1AMsk/bP2GmRU6aRxh186pt5mAsNUJrgm06HUQms1VpyXypOfcFgwrgYTleAh3SaLz
	pFFsXPYoTg1BUPK+bvELP5QSOGY0PEsIJW+VFSyWlE9FpCpEYFGukJ2n/0M41NOUsbX4r+U4m5Hwg
	F11awuA2iBHN1NDggI1+Q7ytf/n3+6IbOELOWOBHYEuXgZPGYTjPjV4dVOwz93lxnq0GTgiqP1+VK
	IQH4y/NRna/hBrUDOpNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTWl9-0008JJ-RH; Wed, 22 May 2019 19:18:43 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTWl5-0008IJ-Ex
 for linux-riscv@lists.infradead.org; Wed, 22 May 2019 19:18:41 +0000
Received: by mail-wm1-x341.google.com with SMTP id q15so3364539wmj.0
 for <linux-riscv@lists.infradead.org>; Wed, 22 May 2019 12:18:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:user-agent:date
 :message-id:mime-version;
 bh=oMdcno1bN7UGFXmlvdsH86j5M8DSKBM+CBX05MLBto4=;
 b=IiHh0OkjSBhfeEaplOxktSUxiYE6QnxnBWhAnRpE+MfxpLOpFOmxtbpEOeQC7+Gn3d
 StdAwsHQOC5dtEQofdiP+h3EiWwWNjcVtQoOOGu6woXz5s7vKdugOPyxHdDXSHySSOqB
 nP8Xwa1vEktW6I1veR341reZCVR3xswoiN16Chzh5tLTx0sTXlMbdG4intN0XDRaXMNy
 xxSWtkhkj4h7m4hE25rTekhhjjIwDmJXS9uImPQI83vibg7paTg7QUoI8iltmNQXeE1M
 SO+hxzfHVw41Ybgq0SzLg/23yF3FWgALlMQMfDxujKMxxQ5BoIdCDbA7Cb/4AAaUF2wP
 bKuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references
 :user-agent:date:message-id:mime-version;
 bh=oMdcno1bN7UGFXmlvdsH86j5M8DSKBM+CBX05MLBto4=;
 b=hhvun//fiQizBCifyajbCzswOV4FaqHRagqJgOmgW3YS+Ek2jfSVwpMxNCi0G8CimV
 pDcFiqgQ1VthPRMTcpABsPZQr0HCboIOejf2MLRmDQ7WuV33HHGKXOwac661N75ORYxO
 mUtX6471rnd8aHdpAWJd4JGaIqRzEmwdXu4ueZReE6Ob44uI3vyW6Ds+FxObuzvUSK9Y
 4PXy0lfpPd7WSHwzF7hpEPGO25nvdJY7k0JO+jd04xtggwHLTPaaXjYWzv+f+V+qfvf6
 cw6oDfk5P6V8rXfFa0zbrHCI4mblizCY+FKrbmxprueCpxkFYt+tPIamv47kkqs0Akm4
 XaIA==
X-Gm-Message-State: APjAAAX8GAI0edZPABv/YQpX9CJlMTtpdFIsrWiWpHGODyL8O2OCGQJ3
 jpkmKUc/6SUekJDG29e5+Tciyw==
X-Google-Smtp-Source: APXvYqwJkoMFDjSKM1Xceo+2NVH2eEaNn1h+0mvTxstEwWDLuXSNqLr+xgh+7QN1+3tmDHssAXHjNg==
X-Received: by 2002:a1c:40c6:: with SMTP id n189mr8955328wma.65.1558552716735; 
 Wed, 22 May 2019 12:18:36 -0700 (PDT)
Received: from localhost ([2a01:cb1d:12c:8800:1e45:34e8:9e5f:f03])
 by smtp.gmail.com with ESMTPSA id y40sm47697179wrd.96.2019.05.22.12.18.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 12:18:35 -0700 (PDT)
From: Loys Ollivier <lollivier@baylibre.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH 1/6] arch: riscv: add support for building DTB files from
 DT source data
In-Reply-To: <20190411084304.5072-2-paul.walmsley@sifive.com> (Paul Walmsley's
 message of "Thu, 11 Apr 2019 01:42:59 -0700")
References: <20190411084304.5072-2-paul.walmsley@sifive.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.3 (gnu/linux)
Date: Wed, 22 May 2019 21:18:33 +0200
Message-ID: <868suyb8mu.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_121839_551354_FF0160F3 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Paul Walmsley <paul@pwsan.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Atish Patra <atish.patra@wdc.com>,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu 11 Apr 2019 at 01:42, Paul Walmsley <paul.walmsley@sifive.com> wrote:

> Similar to ARM64, add support for building DTB files from DT source
> data for RISC-V boards.
>
> This patch starts with the infrastructure needed for SiFive boards.
> Boards from other vendors would add support here in a similar form.
>
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> Signed-off-by: Paul Walmsley <paul@pwsan.com>
> Cc: Palmer Dabbelt <palmer@sifive.com>
> Cc: Albert Ou <aou@eecs.berkeley.edu>

Tested-by: Loys Ollivier <lollivier@baylibre.com>

Tested the whole patch series using FSBL+BBL.
Did basic boot testing and uart validation.

The actual testing process is quite cumbersome.
One needs to rebuild the BBL to update the dtb loaded.

Would you have an idea of the delta between bbl and u-boot ?
I tried booting the same kernel + dtb with U-Boot but ran into
errors related to plic.

Loys

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

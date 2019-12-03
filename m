Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E840410FAC7
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Dec 2019 10:32:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f0rYnGUc92eVEihuDIitc3pV4u0cwdCkUFAENhaSwnU=; b=YtCQzfuIByC5LO
	6aw9SJd2c7UrqUHeL1UMuOQcINNKj/GTk96NYCbZ/LpQj37sSuLHu64KHgv6/Hy+xwr7IMY+HwOEW
	XmPROqiI6r1qOJAfteal8+tO9HmrB8hQneqLx3bWl1lknsKrwAocNizxgN/mo+Z6mZNIJIpN4Dtpa
	pMSAVDnmMeKPpNTxSrowFn7GLm7i14ab9oSZDddmZmFKNY2f+SxP+ep/bNZ5TvI0rPj2WNXOoibck
	4jVlLtUulvxlyljkVE3j2mBN11LvpMevDcXPPZ0HRUzqvSMd0mfVjyl0U9hFixHbeLQe9x+dBp3I1
	7e/VSGqGxA/4OsFnkTEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic4Xo-00086s-Mf; Tue, 03 Dec 2019 09:32:32 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic4XX-0007vQ-Rr; Tue, 03 Dec 2019 09:32:17 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E96CBAF13;
 Tue,  3 Dec 2019 09:32:13 +0000 (UTC)
Subject: Re: [PATCH 1/6] dt-bindings: clock: add bindings for RTD1619 clocks
To: James Tai <james.tai@realtek.com>
References: <20191203074513.9416-1-james.tai@realtek.com>
 <20191203074513.9416-2-james.tai@realtek.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <f069747b-7f10-f47c-684d-11138b8fd129@suse.de>
Date: Tue, 3 Dec 2019 10:32:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191203074513.9416-2-james.tai@realtek.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_013216_194502_74A5A629 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 cylee12 <cylee12@realtek.com>, linux-realtek-soc@lists.infradead.org,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi James and Cheng-Yu,

Am 03.12.19 um 08:45 schrieb James Tai:
> From: cylee12 <cylee12@realtek.com>

Please fix the author (git commit --amend --author="...") and use an
appropriate git config setting (and communication to your team) to avoid
this reoccurring for new commits - already pointed out to James.

BTW I wonder why we have so many seemingly unrelated people in CC
(Mediatek, RISC-V) that the patches and responses keep hanging in
mailing list moderation?

> 
> Add devicetree binding for Realtek RTD1619 clocks.
> 
> Signed-off-by: Cheng-Yu Lee <cylee12@realtek.com>
> Signed-off-by: James Tai <james.tai@realtek.com>
> ---
>  include/dt-bindings/clock/rtk,clock-rtd1619.h | 88 +++++++++++++++++++
>  1 file changed, 88 insertions(+)
>  create mode 100644 include/dt-bindings/clock/rtk,clock-rtd1619.h
> 
> diff --git a/include/dt-bindings/clock/rtk,clock-rtd1619.h b/include/dt-bindings/clock/rtk,clock-rtd1619.h
> new file mode 100644
> index 000000000000..497f9b914857
> --- /dev/null
> +++ b/include/dt-bindings/clock/rtk,clock-rtd1619.h

NAK for the filename. "rtk," is not a registered vendor prefix [1], so
you cannot use it anywhere in bindings. Please use the registered prefix
"realtek," and compare the other Realtek bindings headers that got
accepted already. The order of SoC vs. name seems wrong.

[1]
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Documentation/devicetree/bindings/vendor-prefixes.yaml

> @@ -0,0 +1,88 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */

Why restrict these trivial numbers to GPLv2? Please compare the .dtsi
and .yaml files where this may get #include'd, and keep non-Linux OSes
such as BSDs in mind for any DT bindings; it's supposed to be an
OS-neutral interface contract that anyone can implement.

> +#ifndef __DT_BINDINGS_RTK_CLOCK_RTD1619_H
> +#define __DT_BINDINGS_RTK_CLOCK_RTD1619_H

May need adjustments based on the filename, same for the #endif.

> +
> +#define CC_PLL_SCPU 0
> +#define CC_PLL_BUS 2

Please tab-indent the indices for readability.

> +#define CC_CLK_SYS 3
> +#define CC_CLK_SYS_SB2 4
> +#define CC_PLL_DCSB 5
> +#define CC_CLK_SYSH 6
> +#define CC_PLL_DDSA 7
> +#define CC_PLL_DDSB 8
> +#define CC_PLL_GPU 9
> +#define CC_CLK_GPU 10
> +#define CC_PLL_VE1 11
> +#define CC_PLL_VE2 12
> +#define CC_CLK_VE1 13
> +#define CC_CLK_VE2 14
> +#define CC_CLK_VE3 15
> +#define CC_CLK_VE2_BPU 16
> +#define CC_PLL_DIF 17
> +#define CC_PLL_PSAUD1A 18
> +#define CC_PLL_PSAUD2A 19
> +
> +#define CC_CKE_MISC 33
> +#define CC_CKE_PCIE0 34
> +#define CC_CKE_GSPI 35
> +#define CC_CKE_SDS 36
> +#define CC_CKE_HDMI 37
> +#define CC_CKE_LSADC 38
> +#define CC_CKE_SE 39
> +#define CC_CKE_CP 40
> +#define CC_CKE_MD 41
> +#define CC_CKE_TP 42
> +#define CC_CKE_RSA 43
> +#define CC_CKE_NF 44
> +#define CC_CKE_EMMC 45
> +#define CC_CKE_SD 46
> +#define CC_CKE_SDIO_IP 47
> +#define CC_CKE_MIPI 48
> +#define CC_CKE_EMMC_IP 49
> +#define CC_CKE_SDIO 50
> +#define CC_CKE_SD_IP 51
> +#define CC_CKE_CABLERX 52
> +#define CC_CKE_TPB 53
> +#define CC_CKE_SC1 54
> +#define CC_CKE_I2C3 55
> +#define CC_CKE_JPEG 56
> +#define CC_CKE_SC0 57
> +#define CC_CKE_HDMIRX 58
> +#define CC_CKE_HSE 59
> +#define CC_CKE_UR2 60
> +#define CC_CKE_UR1 61
> +#define CC_CKE_FAN 62
> +#define CC_CKE_SATA_WRAP_SYS 63
> +#define CC_CKE_SATA_WRAP_SYSH 64
> +#define CC_CKE_SATA_MAC_SYSH 65
> +#define CC_CKE_R2RDSC 66
> +#define CC_CKE_PCIE1 67
> +#define CC_CKE_I2C4 68
> +#define CC_CKE_I2C5 69
> +#define CC_CKE_EDP 70
> +#define CC_CKE_TSIO_TRX 71
> +#define CC_CKE_TVE 72
> +#define CC_CKE_VO 73
> +
> +#define CC_CLK_MAX 74
> +
> +
> +#define IC_CKE_CEC0 2
> +#define IC_CKE_CBUSRX_SYS 3
> +#define IC_CKE_CBUSTX_SYS 4
> +#define IC_CKE_CBUS_SYS 5
> +#define IC_CKE_CBUS_OSC 6
> +#define IC_CKE_IR 7
> +#define IC_CKE_UR0 8
> +#define IC_CKE_I2C0 9
> +#define IC_CKE_I2C1 10
> +#define IC_CKE_ETN_250M 11
> +#define IC_CKE_ETN_SYS 12
> +#define IC_CKE_USB_DRD 13
> +#define IC_CKE_USB_HOST 14
> +#define IC_CKE_USB_U3_HOST 15
> +#define IC_CKE_USB 16
> +#define IC_CLK_MAX 17
> +
> +#endif /* __DT_BINDINGS_RTK_CLOCK_RTD1619_H */
> +

Trailing empty line.

Regards,
Andreas

-- 
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 Nürnberg, Germany
GF: Felix Imendörffer
HRB 36809 (AG Nürnberg)


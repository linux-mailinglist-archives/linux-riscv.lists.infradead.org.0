Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D72311BD87
	for <lists+linux-riscv@lfdr.de>; Wed, 11 Dec 2019 20:55:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m80QnpkdRtnOdbNfu8kFkomh7rqJfH/NfkLD/bU18oA=; b=sqcBhlo5yJaMOa
	LpAV/vs7faEnapH7FXmKVBtnzSl5PM6Sg0kWdxJpyeyzkbYPiCC/qtkszAallM/Oq0PG/aBzpugeg
	TVSWY28EZXUAS53SMWA2GfHGXmO3DyT1V/kNHOvURpTWz6W8lhsMGCzilJL1kPl0R2X9qgpSOqnUX
	YsBnrR+BBlKx0YIicyYa5yleWym5TmObHOOVH257ZaVMXnipqRt5DLVVnDlKHGLT70C+QxnF02+d4
	lR3td3hnO13bx7epGyzvmzquRZpmt6ymlgqwCOC2/ck60VjuYSI5nyjYzMl079vrxsaUvnq+12Xdd
	sezUFkCsI65yB52FADXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if84n-00046p-KE; Wed, 11 Dec 2019 19:55:13 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if84e-0002wR-45; Wed, 11 Dec 2019 19:55:05 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 5F336AC1C;
 Wed, 11 Dec 2019 19:54:59 +0000 (UTC)
Subject: Re: [PATCH 08/17] clk: imx: convert to devm_platform_ioremap_resource
To: Paul Walmsley <paul@pwsan.com>
References: <20191209195749.868-1-tiny.windzz@gmail.com>
 <20191209195749.868-8-tiny.windzz@gmail.com>
 <VI1PR04MB7023BD6E46B6DEEBBB762060EE580@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <20191210132146.GF2703785@ulmo>
 <8ff73b97-cf2e-0c91-2764-05ce4c548b06@suse.de>
 <alpine.DEB.2.21.999.1912111751490.32095@utopia.booyaka.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <76d72777-b144-0679-1f4c-1136496a5f06@suse.de>
Date: Wed, 11 Dec 2019 20:54:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.999.1912111751490.32095@utopia.booyaka.com>
Content-Type: text/plain; charset=iso-8859-15
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_115504_464093_70488CB8 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "kstewart@linuxfoundation.org" <kstewart@linuxfoundation.org>,
 "pgaikwad@nvidia.com" <pgaikwad@nvidia.com>,
 "heiko@sntech.de" <heiko@sntech.de>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "chunhui.dai@mediatek.com" <chunhui.dai@mediatek.com>,
 Yangtao Li <tiny.windzz@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
 "nsekhar@ti.com" <nsekhar@ti.com>,
 "tomasz.figa@gmail.com" <tomasz.figa@gmail.com>,
 "rfontana@redhat.com" <rfontana@redhat.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 "weiyongjun1@huawei.com" <weiyongjun1@huawei.com>,
 "krzk@kernel.org" <krzk@kernel.org>,
 "s.nawrocki@samsung.com" <s.nawrocki@samsung.com>,
 "manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "robh@kernel.org" <robh@kernel.org>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "emilio@elopez.com.ar" <emilio@elopez.com.ar>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>,
 "allison@lohutok.net" <allison@lohutok.net>,
 Fabien DESSENNE <fabien.dessenne@st.com>,
 "jonathanh@nvidia.com" <jonathanh@nvidia.com>,
 "cw00.choi@samsung.com" <cw00.choi@samsung.com>,
 "wens@csie.org" <wens@csie.org>, "agross@kernel.org" <agross@kernel.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "Eugeniy.Paltsev@synopsys.com" <Eugeniy.Paltsev@synopsys.com>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "swinslow@gmail.com" <swinslow@gmail.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "john@phrozen.org" <john@phrozen.org>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, James Tai <james.tai@realtek.com>,
 Cheng-Yu Lee <cylee12@realtek.com>, "jcmvbkbc@gmail.com" <jcmvbkbc@gmail.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "pdeschrijver@nvidia.com" <pdeschrijver@nvidia.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "t-kristo@ti.com" <t-kristo@ti.com>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "kgene@kernel.org" <kgene@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "wangyan.wang@mediatek.com" <wangyan.wang@mediatek.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Am 11.12.19 um 18:57 schrieb Paul Walmsley:
> On Tue, 10 Dec 2019, Andreas Färber wrote:
> 
>> I have similar cases with Realtek where registers are simply not grouped
>> into convenient blocks but spread across large memory regions.
> 
> At the hardware level, registers are grouped into IP blocks, to simply 
> both design integration and address decoding.

Reality shows, not all vendors/chips always care about simplification.

Blocks do have names, but they don't always group registers of the same
kind, as Linux expects it - be it for historical backwards compatibility
reasons or because Linux/Android wasn't their main use case in the past.
Firmware developers won't care where their registers are located.

>  Not knowing which Realtek 
> device you're referring to,

Arm based RTD1195 and RTD1295/RTD1395/RTD1619/RTD1319 SoC families,
which I maintain.

> most likely it's the same situation as with 
> the IMX8M TRM, where the DT data doesn't match the underlying reality of 
> the hardware.  In those cases the best approach is usually to just fix the 
> DT data.

No, you're not reading me. My DT data matches the hardware as far as I
know it. You can be really happy that you can login to get NXP manuals;
for other vendors, manuals simply don't exist and we have to deduce DT
from register names/offsets ourselves. Reality is messy!

Just please accept that hardware does not always allow for unique
contiguous memory reservations, and we therefore cannot force these
types of reservations onto everybody.

There might be an opportunity for a new helper with even longer name
that does the expected combination of actions. But is it worth it?
People seem to have stopped giving motivations for their patches in
commit message or cover letter, so it remains entirely unclear how else
one might satisfy the submitter's goals while keeping your code working.
(Also referring to unjustified style-only cleanups popping up lately.)
"to simplify code" is not much to go on, it sounds like a style cleanup
without any practical error avoidance benefits nor an API to be dropped.

Note that I did not receive any cover letter accompanying this patch,
but was CC'ed on plenty of other patches like this one that I'm not
maintainer of, leading me to assume that none was sent.

Alternatively one could do the reservations decoupled from DT inside the
driver, but again not using this suggested helper.

From what I read on other such patches, apparently some Coccinelle build
target emits warnings when it matches some pattern for potential
refactoring, which people then set out to resolve, without understanding
the code they touch or being able to actually test it. That's probably
the root cause that someone would need to tackle - whitelisting
fully-intentional usages of certain APIs to protect against unwarranted
refactorings, or otherwise making sure that people don't get inspired to
in their best intentions break other people's code. I assume kbuild bot
doesn't send out such cocci warnings to us maintainers for good reasons.

A completely fragmented DT with either dozens of reg entries for single
registers or distinct compatible strings for individual registers, to
give them their own DT nodes, is not really handy, compared to one or
two larger clk nodes that handle reg offsets under the hood, without
impacting public DT bindings (e.g., bumping reg's maxItems, clk header).

If you care about modeling this, you're welcome to participate in patch
review @ DTML/LAKML/LRSML. So far there's largely been a yawning silence
in response to my patches introducing syscon and simple-mfd as cleanups,
before things get worse as we add to the DT. Following an unreviewed clk
RFC of mine two years back, there's now been a clk patchset from Realtek
that got a load of review comments from me, waiting for a v2.

If you don't care, then please don't lecture us about how you think
other people's hardware should ideally be like. That's not helpful.

Regards,
Andreas

-- 
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 Nürnberg, Germany
GF: Felix Imendörffer
HRB 36809 (AG Nürnberg)


Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E2F118BD0
	for <lists+linux-riscv@lfdr.de>; Tue, 10 Dec 2019 15:59:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PHDp3opWwkagkLk8jxz2GMWwRMntweobfvyUg8CaBXw=; b=abaiNNxF0rh84I
	WXqmuN95KIKce+X7/RJ+OKrg4FnTcICxD05CoYk3mSbukNSGekgtVqH3C4Y6opumNDH7BBHlGB14a
	VX3hae25C3bQhIr0zGbJcB1Tsd8DFYYMvmg+zLIf/ov3cFZOuLdBAYkVdII7ysRjvJXu9wpNnGjh3
	Y146bRhMSdSQBgwp4Vr2JSunJkcuu+q44vBmmjrVBT3OIxSAj4SXlprDaH+IqIsxrt443kCZUk1KQ
	FOGsejpRV6tZd06riX2s+rV2j/3GCSSLcBdPgPUd0YDcTWpuPm+gDDgJzPTogVlzK4OgI4YtIMifx
	hoWyORgfLPyyJfcH10yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iegyn-0003Bc-8C; Tue, 10 Dec 2019 14:59:13 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iegxc-00023k-2H; Tue, 10 Dec 2019 14:58:06 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 5B79AAC3E;
 Tue, 10 Dec 2019 14:57:55 +0000 (UTC)
Subject: Re: [PATCH 08/17] clk: imx: convert to devm_platform_ioremap_resource
To: Thierry Reding <thierry.reding@gmail.com>
References: <20191209195749.868-1-tiny.windzz@gmail.com>
 <20191209195749.868-8-tiny.windzz@gmail.com>
 <VI1PR04MB7023BD6E46B6DEEBBB762060EE580@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <20191210132146.GF2703785@ulmo>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <8ff73b97-cf2e-0c91-2764-05ce4c548b06@suse.de>
Date: Tue, 10 Dec 2019 15:57:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191210132146.GF2703785@ulmo>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_065800_478008_A6CF6BDB 
X-CRM114-Status: GOOD (  21.77  )
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
Cc: "kstewart@linuxfoundation.org" <kstewart@linuxfoundation.org>,
 "pgaikwad@nvidia.com" <pgaikwad@nvidia.com>,
 "heiko@sntech.de" <heiko@sntech.de>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "chunhui.dai@mediatek.com" <chunhui.dai@mediatek.com>,
 Yangtao Li <tiny.windzz@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "palmer@sifive.com" <palmer@sifive.com>, "nsekhar@ti.com" <nsekhar@ti.com>,
 "tomasz.figa@gmail.com" <tomasz.figa@gmail.com>,
 "rfontana@redhat.com" <rfontana@redhat.com>,
 "weiyongjun1@huawei.com" <weiyongjun1@huawei.com>,
 Fabien DESSENNE <fabien.dessenne@st.com>,
 "s.nawrocki@samsung.com" <s.nawrocki@samsung.com>,
 "manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "john@phrozen.org" <john@phrozen.org>, "robh@kernel.org" <robh@kernel.org>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "emilio@elopez.com.ar" <emilio@elopez.com.ar>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>, "krzk@kernel.org" <krzk@kernel.org>,
 "jonathanh@nvidia.com" <jonathanh@nvidia.com>,
 "cw00.choi@samsung.com" <cw00.choi@samsung.com>,
 "wens@csie.org" <wens@csie.org>, "agross@kernel.org" <agross@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "Eugeniy.Paltsev@synopsys.com" <Eugeniy.Paltsev@synopsys.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "swinslow@gmail.com" <swinslow@gmail.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "allison@lohutok.net" <allison@lohutok.net>,
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

Hi Thierry,

Am 10.12.19 um 14:21 schrieb Thierry Reding:
> On Mon, Dec 09, 2019 at 08:44:39PM +0000, Leonard Crestez wrote:
>> On 09.12.2019 21:58, Yangtao Li wrote:
>>> Use devm_platform_ioremap_resource() to simplify code.
>>>
>>> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
>>> ---
>>>   drivers/clk/imx/clk-imx8qxp-lpcg.c | 6 +-----
>>>   1 file changed, 1 insertion(+), 5 deletions(-)
>>>
>>> diff --git a/drivers/clk/imx/clk-imx8qxp-lpcg.c b/drivers/clk/imx/clk-imx8qxp-lpcg.c
>>> index c0aff7ca6374..10ae712447c6 100644
>>> --- a/drivers/clk/imx/clk-imx8qxp-lpcg.c
>>> +++ b/drivers/clk/imx/clk-imx8qxp-lpcg.c
>>> @@ -164,7 +164,6 @@ static int imx8qxp_lpcg_clk_probe(struct platform_device *pdev)
>>>   	struct clk_hw_onecell_data *clk_data;
>>>   	const struct imx8qxp_ss_lpcg *ss_lpcg;
>>>   	const struct imx8qxp_lpcg_data *lpcg;
>>> -	struct resource *res;
>>>   	struct clk_hw **clks;
>>>   	void __iomem *base;
>>>   	int i;
>>> @@ -173,10 +172,7 @@ static int imx8qxp_lpcg_clk_probe(struct platform_device *pdev)
>>>   	if (!ss_lpcg)
>>>   		return -ENODEV;
>>>   
>>> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>>> -	if (!res)
>>> -		return -EINVAL;
>>> -	base = devm_ioremap(dev, res->start, resource_size(res));
>>> +	base = devm_platform_ioremap_resource(pdev, 0);
>>>   	if (!base)
>>>   		return -ENOMEM;
>> This breaks imx8qxp-mek boot by causing most peripherals (like uart) to 
>> fail to probe.
>>
>> The old and new paths are not equivalent: devm_platform_ioremap_resource
>> calls devm_ioremap_resource which differs from devm_ioremap by also 
>> calling devm_request_mem_region.
>>
>> This prevents other mappings in the area and imx8qxp-lpcg nodes map 
>> whole hardware "subsystems" and overlap most peripherals. For example:
>>
>>                   adma_lpcg: clock-controller@59000000 {
>>                           compatible = "fsl,imx8qxp-lpcg-adma";
>>                           reg = <0x59000000 0x2000000>;
>>                           #clock-cells = <1>;
>> 		};
>>
>>                  adma_lpuart0: serial@5a060000 {
>> 			reg = <0x5a060000 0x1000>;
>> 			...
>> 		};
> The whole point of doing a request_mem_region() is to avoid having
> multiple drivers trample on each others' mappings. What you do above
> doesn't look right. Why does that clock controller need access to 32
> MiB of I/O memory space?

I have similar cases with Realtek where registers are simply not grouped
into convenient blocks but spread across large memory regions.

Also, Fabien and I had a review discussion about the very same topic of
suggesting these functions which implicitly do a request_mem_region(),
so this might need some better documentation for raising awareness?

For some cases I posted patches to convert those to syscon / simple-mfd,
but clk in particular is a difficult one: clks still express their
parents by names rather than pointers, and having clks spread across
drivers has implications on needing to expose non-leaf clocks in the DT
bindings, as well as needing to mess with __clk_get_name() for actually
getting the name to use as parent when obtaining the clk from DT.
Imagine a lonely clk gate register and the PLLs or other gates they are
supplied from residing far away. It's really ugly either way...

That said, the Actions Semi patch 16/17 that I'm CC'ed for looks okay.

Regards,
Andreas

> 
> That said, there are legitimate reasons for sharing mappings across
> drivers, so I agree that automated conversions like this should be done
> very carefully. The difficulty is that there are cases where drivers
> simply omitted that request_mem_region() by mistake and where the
> conversion can be correct (and in fact an improvement), but we can't
> make the assumption blindly.
> 
> Thierry
> 
>> I don't know if this issue affects any other platforms (imx8 lpcg 
>> bindings are unusual) but if you found this with an automated tool 
>> perhaps it should be adjusted?
>>
>> By my count it's the 4th time this incorrect cleanup was posted.
>>
>> Previously: https://lkml.org/lkml/2019/12/4/487
>>
>> --
>> Regards,
>> Leonard


-- 
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 Nürnberg, Germany
GF: Felix Imendörffer
HRB 36809 (AG Nürnberg)


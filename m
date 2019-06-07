Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0433393C5
	for <lists+linux-riscv@lfdr.de>; Fri,  7 Jun 2019 19:58:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M3e3MpgIjXStD+IGxkU/9uFDEbEixIv0aSX8uj1KLtk=; b=a0r6JriqYw6eFSEuwDDF3xNC6
	WXy2oe1AfYtiVG0Vr78a9NcLmn3D8XaQClnHe9n+Ve+aAoFnTHZZNXhSnakp0sXsPEXc8Q92LmRBc
	EhTHmG0ujk3EqQF2qT226IrSXb8Nss/aQgH2k1vFor04XBUv7h7ZFO0Od7c4ksZUFn4IaMMvCK20d
	zCisCm2lT8WlaDKeTAmj/ckAu+3PucjBuX4oVRaTAbdrPLckwORZ3I1HFK3VDW/dHoEgjTMbZw2FZ
	taksdIl+IDvPqj3pVyapBdinM6iMkuwmPRNpMkWLlFsSOfCXiCFn4oPzocwMdFrnZRTMEDA6tUJFE
	wFDLJunZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZJ8H-0003C5-6O; Fri, 07 Jun 2019 17:58:29 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZJ8C-0003BX-NS
 for linux-riscv@lists.infradead.org; Fri, 07 Jun 2019 17:58:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559930305; x=1591466305;
 h=subject:to:references:from:message-id:date:mime-version:
 in-reply-to:content-transfer-encoding;
 bh=woJa8oDcFeR2tkr19R+p4o+CE4xnVzjrKnTOpvLa3lc=;
 b=OfGe/h2vZmK/yPsA3vCkvrEs2+2mswiDallsfnzYiuzd+AggNU5iiysa
 2/DGYhCzNkqxukn4eRGYJyn/6Bp4tAddVtq7lmdKUDtEbh+NU9M80EYOh
 dxNePksr3bdkKMzUTvgkBdY7XSn5KKLe2CM/tKteMVqK99KQWaRVax7Go
 HqUC0WWj7Ja7npE9CMq5ly6Ca7A0tThS6n4Oz3Hxkis8XGP+HQZn2pmQ0
 ceGK7pmhWkZ6lOh7BRMQsDsYXYpfI1PgvdERcifTnI47er5ste6mXG0ga
 3bwmSMCVHp4iXaVa+gdKl8pUYd52TdtxN3AfG3jGo8T4R8T+SRxgkc6eN A==;
X-IronPort-AV: E=Sophos;i="5.63,564,1557158400"; d="scan'208";a="111715228"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 08 Jun 2019 01:58:22 +0800
IronPort-SDR: 8uQL1Rz+yZil8avi9docGTBoRqyyUsS0W0y388Uy9XnJRjnyHMDDEIBtoni/c1j+2vXdmWLTPc
 dZeTJg0MtN+UIvHgP7hkK+pRtzZ8VPAheNv+3tIxAtObTH+4jc1uEkoEPWSxwo6qRpHHoO7wZC
 KqPHOpV95YivXhUxlD5GvGVM68dM5PX8ev/97HzPlV3mZASdshCWynS7GnJGUcP/wtM5sFXD6O
 fEQKhXBt+bj5CAV8/gmZhS8HT6eFNBU2VjMqw0aTjrO0TVQ8CE8ncED65mXn0Ad2ke3+/hixCQ
 w/mXQo1qRWv5wpGFc5GCnSc1
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP; 07 Jun 2019 10:35:38 -0700
IronPort-SDR: 9ydF7SBc0h/lVUEWTPyG2EwzSjQ/jM1gCbTbXoA60RiLQCcxrzXErJ3WXlF+ZONWg+5rX5e7zB
 2jKYHy/M1YI3WdoP/Yj1FZp6yGKx48Q9q9CLvLGiHnQ4v9ntFLRIgNn3eE2mfqKXjeyqvavs4P
 PkgTdA8XtjGhNocg7a4X8ko1qvKFzqtzSrXWH9ZNuOlb3+7h2U/GotkRh9LQRPvb0fjwEuCytb
 HtrvWmelq9kOyNw58zByYcXORpFFRWa3ndhpKfx/36IBTsGkFap81gndsuHyQfsiLMrwxuy2QB
 HGU=
Received: from r6220.sdcorp.global.sandisk.com (HELO [192.168.1.6])
 ([10.196.157.143])
 by uls-op-cesaip02.wdc.com with ESMTP; 07 Jun 2019 10:58:21 -0700
Subject: Re: [PATCH v3 0/5] arch: riscv: add board and SoC DT file support
To: Kevin Hilman <khilman@baylibre.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
References: <20190602080500.31700-1-paul.walmsley@sifive.com>
 <7h36kogchx.fsf@baylibre.com> <05010310-baa2-c711-cb54-96a9138f582a@wdc.com>
 <7hftolcp90.fsf@baylibre.com>
From: Atish Patra <atish.patra@wdc.com>
Message-ID: <cf846786-10ed-f0ee-8664-b831a72386da@wdc.com>
Date: Fri, 7 Jun 2019 10:58:16 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <7hftolcp90.fsf@baylibre.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_105824_831009_C9A0875B 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 6/7/19 9:52 AM, Kevin Hilman wrote:
> Atish Patra <atish.patra@wdc.com> writes:
> 
>> On 6/5/19 10:37 AM, Kevin Hilman wrote:
>>> Hi Paul,
>>>
>>> Paul Walmsley <paul.walmsley@sifive.com> writes:
>>>
>>>> Add support for building flattened DT files from DT source files under
>>>> arch/riscv/boot/dts.  Follow existing kernel precedent from other SoC
>>>> architectures.  Start our board support by adding initial support for
>>>> the SiFive FU540 SoC and the first development board that uses it, the
>>>> SiFive HiFive Unleashed A00.
>>>>
>>>> This third version of the patch set adds I2C data for the chip,
>>>> incorporates all remaining changes that riscv-pk was making
>>>> automatically, and addresses a comment from Rob Herring
>>>> <robh@kernel.org>.
>>>>
>>>> Boot-tested on v5.2-rc1 on a HiFive Unleashed A00 board, using the
>>>> BBL and open-source FSBL, with modifications to pass in the DTB
>>>> file generated by these patches.
>>>
>>> Tested this series on top of v5.2-rc3 on HiFive Unleashed board using
>>> OpenSBI + mainline u-boot (master branch as of today).
>>>
>>> Tested-by: Kevin Hilman <khilman@baylibre.com>
>>>
>>>> This patch series can be found, along with the PRCI patch set
>>>> and the DT macro prerequisite patch, at:
>>>>
>>>> https://github.com/sifive/riscv-linux/tree/dev/paulw/dts-v5.2-rc1
>>>
>>> nit: I only see this series in that branch, not any of the prerequisite
>>> patches you mentioned, which made me assume I could this series alone on
>>> top of v5.2-rc3, which worked just fine.
>>>
>>
>> I tried only this series on top of v5.2-rc3. Kernel boots file with DT
>> updated via U-Boot. But networking didn't come up.
>>
>> Do you have networking up after the boot? If yes, can you please share
>> the config.
> 
> I didn't test networking from the kernel initially, but looking now, I
> do not have networking come up in the kernel either.
>

ok. I am not alone then :).

@Paul: Do you get networking up in your FSBL + BBL + Linux boot flow 
with the DT patch series ?

> Kevin
> 



-- 
Regards,
Atish

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

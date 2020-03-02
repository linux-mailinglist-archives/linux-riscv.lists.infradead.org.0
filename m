Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 627E117529A
	for <lists+linux-riscv@lfdr.de>; Mon,  2 Mar 2020 05:21:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U9zyJaI84VJfbl4voMzIdaqE8FwXPjOiCX4SKnfegMw=; b=WrsOhCN5MlyUAG
	IoD1dv/m3SvXT5lxfpO6Rcpw9ohWmv/QFXMwhdSos7GX6bMtney1odTvKg+M5E2d5+GOx/c3tWPNd
	KBAR45XkRcBlmzr7u4UgQMkH9swe5m1JqDTTVsEdA44dJ3Ld1BQS7J6gCc40uZlC714oqc9eT9g/k
	DMhkjxsNFkKruVJIB0TroErmqk6SZBRb2Y1u1wmRj+2tqNd8cHg+WxUyHlK0jBozx3UB+qw/A7IMX
	RINCyPYTaIGq8Sw63K8eW855fT3uxRq6nSEhJdil0sBvsBxpMkxPvHIzojq8vxn9S9xQ1ESd9UOt2
	femKS9y/uq0/EVo7cJgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8caA-0003fp-Ij; Mon, 02 Mar 2020 04:21:30 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8ca7-0003fQ-WF
 for linux-riscv@lists.infradead.org; Mon, 02 Mar 2020 04:21:29 +0000
Received: by mail-qv1-xf44.google.com with SMTP id u10so4273523qvi.2
 for <linux-riscv@lists.infradead.org>; Sun, 01 Mar 2020 20:21:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=U9zyJaI84VJfbl4voMzIdaqE8FwXPjOiCX4SKnfegMw=;
 b=KkaivCAwUX4In0ApYEscldAS8Qc6EAejDJDjD20eWo31Zs3F2gL5/J/XskUt5Qm1S8
 KN//qSar3uDrJpG5LzH4FjzJPwAf15rEXLlfyJ2vD3PBjM1RmSPlNcrHvUhLGi0g7mz1
 Hgy+fA6NbAgbXSLrhkmH8nlBnIL4jqDTZxqQDR1pXnzFcOrnMEvL8ftqnyTWr4JPjM1n
 HZRPjXgwEQyKwKurMQGmgtds+yt+XtJN1w2PU9rBgzyX9P6h3KeB0xw/pGB/d/i//FEk
 6dAcbkIa4Eomez5GeE7ny9tGp6udC6759/lWBhana47qmdIDoAfJ5RrgDVthTjLV85DE
 L9Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=U9zyJaI84VJfbl4voMzIdaqE8FwXPjOiCX4SKnfegMw=;
 b=sDGHHA7dJ1p5LNG4WtY7bL6YL03BkelVi2mcqKabtpuHYoow8E9q+2VcTQYMpHcct6
 Xe/EKS+01iR06LVdxFIvsRDBGP/hjMpH0ML9BzcJ4MdYN+cMBPz4Bnr6/6elPLfRje8M
 3sm33YJwNDWCnX0dhXB8Pmdf2XSvsBlcSnmBd2GgLTU18jeWiPDlfFODuCLgYj8VfUjh
 T+cz7CAeUbnF4qlUrdpwJvFqoEsiSvSWIACtY+OS2f7XcWuxhcHLSm9Tgdt3lT8g3cWJ
 gDOv1bXg8/Cg/ggQNXGlUmNRaYK1kmRHLMWtWV9CEgrzjlaWgTHBIRWzRgo4NmQM5RyL
 qXEQ==
X-Gm-Message-State: APjAAAXPrFjkhXLkVXOIg92E3WMtKbl+3Dy6JBNLMQr3IOJXL0EX689o
 ZD9gYwB5h+KDNcNi3aD+JeA=
X-Google-Smtp-Source: APXvYqzKb8tjOeoCI8AzsO+4z++dPP/ULaQZp6gr6h6r6es6IvQkp36J1xiKdLzhEeJLLjCw/FoCqA==
X-Received: by 2002:ad4:57b1:: with SMTP id g17mr13352866qvx.167.1583122886348; 
 Sun, 01 Mar 2020 20:21:26 -0800 (PST)
Received: from [192.168.1.117] ([75.102.135.197])
 by smtp.googlemail.com with ESMTPSA id z6sm9567814qto.86.2020.03.01.20.21.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 01 Mar 2020 20:21:25 -0800 (PST)
Subject: Re: [PATCH 00/10] Kendryte k210 SoC boards support
To: Anup Patel <anup@brainfault.org>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <5be71201-962c-5db6-c330-f30a770c4034@gmail.com>
 <BYAPR04MB581679CF61DF51E1588D7960E7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
 <789d9de4-8b76-19ff-15bc-eaef6d274173@gmail.com>
 <CAAhSdy3+WU31NtXyrYmfSRhhD2k1Rv8tk2pLe+ESYTpj=+LnGA@mail.gmail.com>
From: Sean Anderson <seanga2@gmail.com>
Autocrypt: addr=seanga2@gmail.com; prefer-encrypt=mutual; keydata=
 mQENBFe74PkBCACoLC5Zq2gwrDcCkr+EPGsT14bsxrW07GiYzQhLCgwnPdEpgU95pXltbFhw
 46GfyffABWxHKO2x+3L1S6ZxC5AiKbYXo7lpnTBYjamPWYouz+VJEVjUx9aaSEByBah5kX6a
 lKFZWNbXLAJh+dE1HFaMi3TQXXaInaREc+aO1F7fCa2zNE75ja+6ah8L4TPRFZ2HKQzve0/Y
 GXtoRw97qmnm3U36vKWT/m2AiLF619F4T1mHvlfjyd9hrVwjH5h/2rFyroXVXBZHGA9Aj8eN
 F2si35dWSZlIwXkNu9bXp0/pIu6FD0bI+BEkD5S7aH1G1iAcMFi5Qq2RNa041DfQSDDHABEB
 AAG0K1NlYW4gR2FsbGFnaGVyIEFuZGVyc29uIDxzZWFuZ2EyQGdtYWlsLmNvbT6JAVcEEwEK
 AEECGwMFCwkIBwIGFQgJCgsCBBYCAwECHgECF4ACGQEWIQSQYR1bzo1I0gPoYCg+6I/stKEQ
 bgUCXT+S2AUJB2TlXwAKCRA+6I/stKEQbhNOB/9ooea0hU9Sgh7PBloU6CgaC5mlqPLB7NTp
 +JkB+nh3Fqhk+qLZwzEynnuDLl6ESpVHIc0Ym1lyF4gT3DsrlGT1h0Gzw7vUwd1+ZfN0CuIx
 Rn861U/dAUjvbtN5kMBqOI4/5ea+0r7MACcIVnKF/wMXBD8eypHsorT2sJTzwZ6DRCNP70C5
 N1ahpqqNmXe0uLdP0pu55JCqhrGw2SinkRMdWyhSxT56uNwIVHGhLTqH7Q4t1N6G1EH626qa
 SvIJsWlNpll6Y3AYLDw2/Spw/hqieS2PQ/Ky3rPZnvJt7/aSNYsKoFGX0yjkH67Uq8Lx0k1L
 w8jpXnbEPQN3A2ZJCbeMuQENBF0/k2UBCADhvSlHblNc/aRAWtCFDblCJJMN/8Sd7S9u4ZRS
 w1wIB4tTF7caxc8yfCHa+FjMFeVu34QPtMOvd/gfHz0mr+t0PiTAdDSbd6o7tj+g5ylm+FhT
 OTUtJQ6mx6L9GzMmIDEbLxJMB9RfJaL2mT5JkujKxEst6nlHGV/lEQ54xBl5ImrPvuR5Dbnr
 zWQYlafb1IC5ZFwSMpBeSfhS7/kGPtFY3NkpLrii/CF+ME0DYYWxlkDIycqF3fsUGGfb3HIq
 z2l95OB45+mCs9DrIDZXRT6mFjLcl35UzuEErNIskCl9NKlbvAMAl+gbDH275SnE44ocC4qu
 0tMe7Z5jpOy6J8nNABEBAAGJATwEGAEKACYWIQSQYR1bzo1I0gPoYCg+6I/stKEQbgUCXT+T
 ZQIbDAUJAeEzgAAKCRA+6I/stKEQbjAGB/4mYRqZTTEFmcS+f+8zsmjt2CfWvm38kR+sJFWB
 vz82pFiUWbUM5xvcuOQhz698WQnIazbDGSYaOipyVNS52YiuYJDqMszzgw++DrcSuu0oRYWN
 EWCkJjxMqjGg8uY0OZ6FJG+gYRN5wMFErGfV1OqQ7l00FYA9OzpOEuW9PzPZEutFnAbbh77i
 zvxbQtT7IJCL24A4KutNYKmWg98im4mCzQcJCxE86Bv69ErLVPUyYbp4doLadScilXlvkkjL
 iq1wOt3rRzOuw+qnWVgWGBPxdDftz0Wck941tYF9XE0aMgkf4o1sGoDZFUFPCQdfEYPzzV7O
 S5hN3/mP5UeooFHb
Message-ID: <97ac252d-cf89-f259-55d5-49651068bddd@gmail.com>
Date: Sun, 1 Mar 2020 23:21:24 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAAhSdy3+WU31NtXyrYmfSRhhD2k1Rv8tk2pLe+ESYTpj=+LnGA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_202128_038534_A1928BA3 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [seanga2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [seanga2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, Anup Patel <Anup.Patel@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 3/1/20 11:17 PM, Anup Patel wrote:
> On Mon, Mar 2, 2020 at 9:23 AM Sean Anderson <seanga2@gmail.com> wrote:
>>
>> On 3/1/20 10:01 PM, Damien Le Moal wrote:
>>> On 2020/02/29 5:32, Sean Anderson wrote:
>>>> Hi,
>>>>
>>>> When booting from U-Boot I get an OOM. Perhaps this is related to the
>>>> second cpu not coming up?
>>>
>>> Unlikely. It looks like your user space needs 2MB per shell (order 9
>>> allocation). Since you have only 5.5MB free, that may explain the allocation
>>> failure (if init is forking another shell especially).
>>
>> This should be before init comes up; when comparing this to your syslog
>> output there are several more messages before init gets started.
>>
>>> For the second core not coming up, an IPI needs to be sent to the non-boot core
>>> to wake it up. A Kendryte thing. U-boot should probably do it before jumping to
>>> the kernel. I thought I had that in the kernel though. Will check again.
>>
>> I think it's a RISC-V thing. I should have U-Boot set up to start linux
>> on both cores, but something may be misconfigured on that end.
> 
> You have to booti or bootm on U-Boot M-mode to make all CPUs jump to
> Linux NOMMU.

Ah, I used just "go" for this test since bootm was having some problems
finding a place for the device tree. Perhaps I should try booting this
as a legacy standalone image...

> Based on you log, it seems the second CPU is still spinning in U-Boot
> M-mode and when Linux NOMMU tries to touch memory where second
> CPU is spinning everything gets corrupted.

--Sean


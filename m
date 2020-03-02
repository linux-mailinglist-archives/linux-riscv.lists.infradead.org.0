Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4ED0175297
	for <lists+linux-riscv@lfdr.de>; Mon,  2 Mar 2020 05:18:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8aaMcENVmMBjpe8prTUeuib5Y9XP42NIGkClgnl3Tcs=; b=HDifN3qKJj0z26
	R0Impwon0r1DdtRdesqh2sjenMfAVN1/2UZIYPuwjDVEfxeK4i7rdjgZcluDzszUq7TZNqeC0ppLs
	Veavl+5Bgfas++DK2AiPlnlCdDrGr6wR8r0uk7mIXfG4jJ5kPM1FsyUAE0Z3sItAsFyxsEc8hgPNS
	etCZqs0OjozT7Gjfo5ISCt/IFAN/qfjVbk+WFveszYp3x5D6xSKNrjVkd59eyL4r25mlfcq5leO6o
	txNvEi9+STgB9f8AJXT5+jv5+5GsegnTkC7PBHkPxQWTARkUDzbj4nqElAIysQ13tCrSrgdCYH4Ue
	KTakPZNacHGR4ArluW6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8cXb-0002K8-E2; Mon, 02 Mar 2020 04:18:51 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8cXY-0002Jm-87
 for linux-riscv@lists.infradead.org; Mon, 02 Mar 2020 04:18:49 +0000
Received: by mail-qk1-x741.google.com with SMTP id p62so6106635qkb.0
 for <linux-riscv@lists.infradead.org>; Sun, 01 Mar 2020 20:18:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=8aaMcENVmMBjpe8prTUeuib5Y9XP42NIGkClgnl3Tcs=;
 b=u1U5TMA/02c9gWVe1qaV9bN+dJmJPa4jRHsaPNHYHpeNzatCixBXAOa1SezTkFKS1l
 JX2iVoEKNvdufmc9r8RK+6IXv/FgLeTrEfc/joUQRFMi+bNy3kGtuY3tOgXs08YOVyHx
 hiOCoRNWM+wRts8t3aYUVzc43SyNGjErAr/rGotLri+VkmHrcE2qJGq0j/CwrpqbIab0
 OpXCh0cDHoX4t9sUzl70mPxZJ87+iInVmhDQMTPthI/7HZ6hsHd0VtF45pXTiA5Tlmxi
 D2cLcJ5IJJmLwg0DSWJrA3bjXdH/6iznRmOIrjTTWT7Yt2Uqeak/nZXaHlF+cSqvle8p
 AIgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=8aaMcENVmMBjpe8prTUeuib5Y9XP42NIGkClgnl3Tcs=;
 b=TatSQXoicPvytzCOacvuj46EIT3Q6a4S3jdwAnuDC9CNPmZaAKCEO3Bu5SwyYC+kgj
 0d+cCFssxVr0e1nFYWkdFChGth34q1oLkhcXzqegGKSNpxfJ1C7e2UkkpKfDkA1trz0E
 fVXEG7J7mmFfmDSm/BRaL0Zg4wAZvzn0e72I+OjeJCFwoYWTVQe7BKhLsvqh0BlQ4nkg
 Lj0J3mvJw/ivQMDHc28h8wXJRgNsdllEzxG7oJsSbXJWG9bR8s6RV9V+as7n5JJ04mZY
 0EJHUfpNlI9wbHEn9w5m4Tb9dqucGPGZYRbXj53pC2gpuT05ZKb2EEC3jY8LRmVlnTjj
 Kjag==
X-Gm-Message-State: APjAAAXKjpJDrqq6gtZrLLW1m4paeB/3mQDGrk51e4xdotEaFeuxXF/i
 KO1Aflq982ba6a2xvJc/BTBW3emvllQ=
X-Google-Smtp-Source: APXvYqwG9uKsnLlFEYpZpusbZ8HdeNu1MbS1RuRkd7E59IvU3MnhiJvu/CHaHiY+qRwKrGw+rutNXQ==
X-Received: by 2002:a05:620a:210f:: with SMTP id
 l15mr15036443qkl.474.1583122724864; 
 Sun, 01 Mar 2020 20:18:44 -0800 (PST)
Received: from [192.168.1.117] ([75.102.135.197])
 by smtp.googlemail.com with ESMTPSA id c13sm3541206qtv.37.2020.03.01.20.18.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 01 Mar 2020 20:18:44 -0800 (PST)
Subject: Re: [PATCH 00/10] Kendryte k210 SoC boards support
To: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@dabbelt.com>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <5be71201-962c-5db6-c330-f30a770c4034@gmail.com>
 <BYAPR04MB581679CF61DF51E1588D7960E7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
 <789d9de4-8b76-19ff-15bc-eaef6d274173@gmail.com>
 <BYAPR04MB5816207C9B451E1C663B1986E7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
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
Message-ID: <d5851a09-6ffa-884d-ffcb-b30a2377f2f5@gmail.com>
Date: Sun, 1 Mar 2020 23:18:43 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <BYAPR04MB5816207C9B451E1C663B1986E7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_201848_316293_F3C0C380 
X-CRM114-Status: GOOD (  20.83  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
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
Cc: Anup Patel <Anup.Patel@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 3/1/20 11:11 PM, Damien Le Moal wrote:
> On 2020/03/02 12:53, Sean Anderson wrote:
>> On 3/1/20 10:01 PM, Damien Le Moal wrote:
>>> On 2020/02/29 5:32, Sean Anderson wrote:
>>>> Hi,
>>>>
>>>> When booting from U-Boot I get an OOM. Perhaps this is related to th=
e
>>>> second cpu not coming up?
>>>
>>> Unlikely. It looks like your user space needs 2MB per shell (order 9
>>> allocation). Since you have only 5.5MB free, that may explain the all=
ocation
>>> failure (if init is forking another shell especially).
>>
>> This should be before init comes up; when comparing this to your syslo=
g
>> output there are several more messages before init gets started.
>=20
> Ah, yes. Your log shows:
> [    1.899086] Mem-Info:
> [    1.901072] active_anon:0 inactive_anon:0 isolated_anon:0
> [    1.901072]  active_file:0 inactive_file:0 isolated_file:0
> [    1.901072]  unevictable:705 dirty:0 writeback:0 unstable:0
> [    1.901072]  slab_reclaimable:0 slab_unreclaimable:215
> [    1.901072]  mapped:0 shmem:0 pagetables:0 bounce:0
> [    1.901072]  free:417 free_pcp:0 free_cma:0
>=20
> so only 417 free pages, but awapper is asking for 512 pages allocation.=
=2E. Weird.
> Did you use the k210 default config ? Something using too much memory f=
or the
> board has been added to the config I think.

I am using the default config. I thought it might be the initramfs
taking too much space on decompression, but I got the same problem when
using an uncompressed initramfs.

>>> For the second core not coming up, an IPI needs to be sent to the non=
-boot core
>>> to wake it up. A Kendryte thing. U-boot should probably do it before =
jumping to
>>> the kernel. I thought I had that in the kernel though. Will check aga=
in.
>>
>> I think it's a RISC-V thing. I should have U-Boot set up to start linu=
x
>> on both cores, but something may be misconfigured on that end.
>=20
> May be. I would need to check the specs again :)
> I think that normally, the rom boot stage is normally bringing up all c=
ores ?
> And the kendryte one does not ? Hence the need to explicitly do it for =
direct
> boot (in the kernel) or in u-boot ?

The Kendryte rom brings up all the cores. However, that means that all
cores are executing the same code at the same time. So (in U-Boot) there
is a "hart lottery", which picks a hart to do booting from. All the
other harts instead jump to a loop where they wait for an IPI to tell
them what to execute. This same process also happened in the Kendryte
ROM, and will happen again when Linux comes up. The problem could be
related to my usage of the "go" command vs the full bootm process... I
will check to see if I have the same problem if I boot directly to
Linux.

--Sean



Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2511752ED
	for <lists+linux-riscv@lfdr.de>; Mon,  2 Mar 2020 05:57:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+bBjdCFT3OZqcCf66Mna9kfMiIad2LSREOxnX39V19I=; b=G09Ea88dkJSmkU
	Q7CTiaBe5Jq4HmgPh1SumU64Q7lGEd9hkebVxAdu1qPvbb91tI8krH4ITHwaIb+05KzK33iVP/85k
	ag81/KOdXEm3LGY04spsuoQmPlYTIIr2lOCl5BpQiElNMvzhtJ72btuDQDvV6lxUMoPfMZtkbLPB1
	pUgqQfc7XRaPLIO9Q0uQGFA0Fp80dY3KCSXWAzHjt5K4qFH4JD3hJY4AOz4mACRQBxMlymYVfWxJA
	unVSBMQnvYFYv0ipyiMmIVQpLWhRL+Ytf4fsDtQXkFZRZu5SqG2O88Nfl+QSMWPm+kkf8B1dKhehI
	Kzqqr+VX+vpZJXAp8lGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8d8Y-0007Pg-2L; Mon, 02 Mar 2020 04:57:02 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8d8U-0007PH-CK
 for linux-riscv@lists.infradead.org; Mon, 02 Mar 2020 04:56:59 +0000
Received: by mail-qk1-x742.google.com with SMTP id f198so1171787qke.11
 for <linux-riscv@lists.infradead.org>; Sun, 01 Mar 2020 20:56:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+bBjdCFT3OZqcCf66Mna9kfMiIad2LSREOxnX39V19I=;
 b=JK3tG8Obpj7AUcIA3B9zZp/0tszacrLf8//+Uot9x+Qnx3VCogz/AaLPJI78ZOD+nj
 tuwaeKrZ3H5qUI/BDzkuDyirQf5PlN+qNm7VKRK0iVvbun5+9EgAfneEJ6PYw8RRC88m
 oYbe3SnzvOk/OmrW3fzDtvR00eLJTBhPRxbAmRhQveWktOgM35bSElORq4uE1Q3Jy3Ef
 bRpQwiyGn2I7R69OtPCsep+sufmiK6scytoiWFvt6UCRHV/+ywsvJW0sQ69ndR1F5k59
 1N0VntZKILeAod682TdHtKVdD8fuEnSnRXWpf+ByY6WZ1DRhRboYvqCUo5HOoeqE1fdw
 BtTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=+bBjdCFT3OZqcCf66Mna9kfMiIad2LSREOxnX39V19I=;
 b=ZW9CBDqpmjFfHqXdFZZIIYRogpYud0aQZuCChroe3Dv1YAEc5UBdp4RwcnmrkUkr08
 ldBG8Arb2H7pZCq9fWOhBNIxf20IoroajLWHEs4WeBJKan+bJpSWj6ZltRrM+HWBJw22
 rfs54Nkb6dDiwj88ZNgr+GxgFUmmO86TVkhqT5S3K/jCkH53Es+MSGUmkv2Pq1zocKr/
 dRmVqlfcVExV7smI8HZOf5UMprBG2jEh6iNrUbVc7mVw9yQ4WCuf68kSLvbS//lFofFg
 DPDoVvTwgFTQZo12FHGIo4ByLT9h11N+gSzH3Eqqt4Qhcb0kohNp6HNYX/u8nml+EC+a
 kUVg==
X-Gm-Message-State: APjAAAUTa/fQ3JwXnBWS9qJtrt/gyZ9EAF5TvgcF7uj5PrgLi/8IOfON
 hmKUM6aQ4osGbNeyvzrIZIc=
X-Google-Smtp-Source: APXvYqw82xFB9fbtBTUJxY/WKQh2/UmgYh9JdZF4FaDCW6u8AMqBVEngaFmfN5xEGLN8reSnkbvHaA==
X-Received: by 2002:a37:4c82:: with SMTP id z124mr14492726qka.47.1583125016889; 
 Sun, 01 Mar 2020 20:56:56 -0800 (PST)
Received: from [192.168.1.117] ([75.102.135.197])
 by smtp.googlemail.com with ESMTPSA id h24sm2503297qkk.3.2020.03.01.20.56.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 01 Mar 2020 20:56:56 -0800 (PST)
Subject: Re: [PATCH 00/10] Kendryte k210 SoC boards support
To: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@dabbelt.com>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <5be71201-962c-5db6-c330-f30a770c4034@gmail.com>
 <BYAPR04MB581679CF61DF51E1588D7960E7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
 <789d9de4-8b76-19ff-15bc-eaef6d274173@gmail.com>
 <BYAPR04MB5816207C9B451E1C663B1986E7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
 <d5851a09-6ffa-884d-ffcb-b30a2377f2f5@gmail.com>
 <BYAPR04MB58166098B0A1ED8888BD446FE7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
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
Message-ID: <c21b29d3-3484-ee5d-369d-a59c1e9447a9@gmail.com>
Date: Sun, 1 Mar 2020 23:56:55 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <BYAPR04MB58166098B0A1ED8888BD446FE7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_205658_447254_6FD10D72 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
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

On 3/1/20 11:54 PM, Damien Le Moal wrote:
> On 2020/03/02 13:18, Sean Anderson wrote:
>> On 3/1/20 11:11 PM, Damien Le Moal wrote:
>>> On 2020/03/02 12:53, Sean Anderson wrote:
>>>> On 3/1/20 10:01 PM, Damien Le Moal wrote:
>>>>> On 2020/02/29 5:32, Sean Anderson wrote:
>>>>>> Hi,
>>>>>>
>>>>>> When booting from U-Boot I get an OOM. Perhaps this is related to the
>>>>>> second cpu not coming up?
>>>>>
>>>>> Unlikely. It looks like your user space needs 2MB per shell (order 9
>>>>> allocation). Since you have only 5.5MB free, that may explain the allocation
>>>>> failure (if init is forking another shell especially).
>>>>
>>>> This should be before init comes up; when comparing this to your syslog
>>>> output there are several more messages before init gets started.
>>>
>>> Ah, yes. Your log shows:
>>> [    1.899086] Mem-Info:
>>> [    1.901072] active_anon:0 inactive_anon:0 isolated_anon:0
>>> [    1.901072]  active_file:0 inactive_file:0 isolated_file:0
>>> [    1.901072]  unevictable:705 dirty:0 writeback:0 unstable:0
>>> [    1.901072]  slab_reclaimable:0 slab_unreclaimable:215
>>> [    1.901072]  mapped:0 shmem:0 pagetables:0 bounce:0
>>> [    1.901072]  free:417 free_pcp:0 free_cma:0
>>>
>>> so only 417 free pages, but awapper is asking for 512 pages allocation... Weird.
>>> Did you use the k210 default config ? Something using too much memory for the
>>> board has been added to the config I think.
>>
>> I am using the default config. I thought it might be the initramfs
>> taking too much space on decompression, but I got the same problem when
>> using an uncompressed initramfs.
> 
> Yes, that must be it. How big is your initramfs ? I generally do not see any
> problem with 500-600KB initramfs. For bigger ones, I do see the OOM problem
> often too. But most of the time, the OOM triggers more if the busybox executable
> is too big and there are too many shell levels.

My initramfs is 1.6M atm, so perhaps I should try with a smaller one.

--Sean


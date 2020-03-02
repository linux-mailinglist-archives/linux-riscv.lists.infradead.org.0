Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3381A175267
	for <lists+linux-riscv@lfdr.de>; Mon,  2 Mar 2020 04:53:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bnro8J6fqwLc3zGf6G9XmCKniQmrsguGEFItOuQxSMI=; b=PeDRPR8bsQuKrX
	awIZV6ooHHBC2TeZn8jrNaGHvPzLvcDioL//tIL8J3napuQ0J+IuPgxcTKnibKKqTGT6bFBbiY30+
	I3QPFXphYyjti2Ag1mVbY6MZl8TNQK3D9zzaIem7gV9+2nwrZyfiV1hN6EAqV4bCgWry7UqQD1l1a
	Z38A77yxloi7BbWg2VcnHUngWPnVIMiSyBZr4/Rbuwp9zNKHVjMikry23uIoftkJL2AdTodj3wB2n
	KmVCLwSFCS3kJuOF+ny59adprHX09wTDE69JlX86eN9uCwKvBrWaVBfHDeHv1DVJUrD/sYgtmGQKP
	t3PWB9kkqODFUsJEEHxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8c8q-0002eg-Er; Mon, 02 Mar 2020 03:53:16 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8c8n-0002eL-4d
 for linux-riscv@lists.infradead.org; Mon, 02 Mar 2020 03:53:14 +0000
Received: by mail-qt1-x843.google.com with SMTP id l21so6570299qtr.8
 for <linux-riscv@lists.infradead.org>; Sun, 01 Mar 2020 19:53:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Bnro8J6fqwLc3zGf6G9XmCKniQmrsguGEFItOuQxSMI=;
 b=kW9DLjXKa3HGTyEDNc+9hvfUqMeZ4l3xEDp7JYlgSmFhfwpgu7i09W9RC8AhiGYQy7
 em4LmIYg9LZJcqfaAmQBM3tgst7+ApGGGYXc4YVQOslj4DnEQ5j8uucnZjTrz/QDlF1/
 zrLprsG6NNxZAmEA3WcVT9O5NoZhftpmrQXcTfCqble6V0QV9zHTbGJHlbviSr60iMVZ
 ZMJJJ10R5qpvwXE3mkLKqcuiaKTSQnbBCIJKE4XvB+hQLKVHJAYQL4qjV7Z1bmFJK8y2
 DlZeYp+xYYUnxq6f7eCpxqsKfalCtD+l8G5Rioburtmcrjvhcue9i31A6PLu6/3giJhh
 B85A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=Bnro8J6fqwLc3zGf6G9XmCKniQmrsguGEFItOuQxSMI=;
 b=C7PHtPtD69csEyb5X+gh69SYtytQsVd80nZcukT6FlHxXPR8soM49cWF5BBa4zLBPw
 4dWVKSq6ie5G7ElRhNGYFTN4k1Th2vEEC76nZjZCVAF2zh2IbKGMOCJ0/gQ1BSzF3aj/
 ddxIsI5PfLskaPq0lICmj2hukK39jzfqfyUI4nkKHHiiCJiGkUGktRMHujmHhJ7H32an
 AI/Rdsy0tXr2ETC44y5oCd9nJrCycgPBidyTsH+sJqMfHWPveE6JMDKIxoAnyw2bW1Wr
 FGXiK7vFCbCWoJQWKadMl6Pgpt9Zl10XtgRsnNICLYHvRzvpBV/1/OEwKpmqSyVO3IKT
 6ylQ==
X-Gm-Message-State: APjAAAU7SV7/ZacrF3SxHpcqAuBcNxXPqvvBBaxQK8rTs/rSnTqmnSwJ
 AVuYlXx8dYomBi7gM3hBbjne6iCiqqI=
X-Google-Smtp-Source: APXvYqz9rByfO70zk055pquNZg/jlujgLM6cqO8AF4QcwgsELCTtXLWfBsO4I+b48hBge6S7+KfCDw==
X-Received: by 2002:aed:3109:: with SMTP id 9mr14324260qtg.166.1583121191022; 
 Sun, 01 Mar 2020 19:53:11 -0800 (PST)
Received: from [192.168.1.117] ([75.102.135.197])
 by smtp.googlemail.com with ESMTPSA id n8sm9467506qkn.49.2020.03.01.19.53.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 01 Mar 2020 19:53:10 -0800 (PST)
Subject: Re: [PATCH 00/10] Kendryte k210 SoC boards support
To: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@dabbelt.com>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <5be71201-962c-5db6-c330-f30a770c4034@gmail.com>
 <BYAPR04MB581679CF61DF51E1588D7960E7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
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
Message-ID: <789d9de4-8b76-19ff-15bc-eaef6d274173@gmail.com>
Date: Sun, 1 Mar 2020 22:53:09 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <BYAPR04MB581679CF61DF51E1588D7960E7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_195313_183645_7AEF76A9 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
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

On 3/1/20 10:01 PM, Damien Le Moal wrote:
> On 2020/02/29 5:32, Sean Anderson wrote:
>> Hi,
>>
>> When booting from U-Boot I get an OOM. Perhaps this is related to the
>> second cpu not coming up?
> 
> Unlikely. It looks like your user space needs 2MB per shell (order 9
> allocation). Since you have only 5.5MB free, that may explain the allocation
> failure (if init is forking another shell especially).

This should be before init comes up; when comparing this to your syslog
output there are several more messages before init gets started.

> For the second core not coming up, an IPI needs to be sent to the non-boot core
> to wake it up. A Kendryte thing. U-boot should probably do it before jumping to
> the kernel. I thought I had that in the kernel though. Will check again.

I think it's a RISC-V thing. I should have U-Boot set up to start linux
on both cores, but something may be misconfigured on that end.

--Sean


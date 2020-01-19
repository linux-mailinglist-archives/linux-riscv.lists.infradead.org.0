Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F0E141CDE
	for <lists+linux-riscv@lfdr.de>; Sun, 19 Jan 2020 08:40:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P52uRKZeXf/DGd6XDjW32+1eVEPh+oWaZfKrW/0sLrg=; b=aPq4NSGkkIYGay
	CM4w5EttoDYgruVWKMTzFwmqHEorf9LRY8I2wBIJg8Oaz2ZH2Es5Go2Op2mZNS5oTwKnMTAZI4H/0
	iQQYqiKkwaSNOXqMQJF4RVBc+DUP0+2W7zfBLvbq6wrFRzM5fxueppMRxHv2M6awdLxdb0DOBjfaT
	wu0YZUFzxRTddEAhhnJCcIZYwLiZXc0HPZ29Iibo/eLTdpH02cYWJs9A+mP/wtf6XGYPYudTd66l6
	dFMd953g0kNexqeDnAikc+dT1fMCs7HoFpv3TJJDN8CKphR5+mefqnkihaJTSj60bqY3osNJR+MPp
	EIZnN4QN0MMqU6TunBQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1it5Bw-0002aH-0n; Sun, 19 Jan 2020 07:40:16 +0000
Received: from mail-qk1-x72d.google.com ([2607:f8b0:4864:20::72d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1it5Bp-0002Sr-Fw
 for linux-riscv@lists.infradead.org; Sun, 19 Jan 2020 07:40:13 +0000
Received: by mail-qk1-x72d.google.com with SMTP id 21so27176594qky.4
 for <linux-riscv@lists.infradead.org>; Sat, 18 Jan 2020 23:40:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:autocrypt:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=P52uRKZeXf/DGd6XDjW32+1eVEPh+oWaZfKrW/0sLrg=;
 b=GCc/tfpo65IWId7/3hOCYDq5t+51LnXaE6I2ZhFE32hKd3vHc7DvMJkzdclunkCv4+
 Ex5uPZMAdYxN50Khvb2SvwmQSLj5Xr8CYh/UGjMBpo6O8wC9UUpkhqDDjm7QnrtvJNBM
 zeLZEwUl8N9NIzkNnmm4aAcR7duRQYofpz8J9ORhyq6QIEMtYNfHePZIz2QUNfXvMVL2
 EIK/Hp2QzmZ7Dy3WPwmbyi+F3jTkOAVQARqlu8EX5PMnqLoUszKu2RDE6WlkdVYFGSqt
 NcMW09W+oN5w+2LYpcsRCrKfuvwLg4+GfC5vY2MXfFLcduMJkHRxh1ue7WJd7aB7gfeC
 xiPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:autocrypt:cc:message-id:date
 :user-agent:mime-version:content-language:content-transfer-encoding;
 bh=P52uRKZeXf/DGd6XDjW32+1eVEPh+oWaZfKrW/0sLrg=;
 b=PuaYaNGVDZYPStEjAb30iwE/ynpNxkkB7TdXkEt61UBVyIDr8K5k/zzacggCySHDFW
 ep1px5wilxpX09d//0ScI9bUcorU+Kxdnd9AAYmgnXSynVuB56vQ9+SBLzpwoaFbttMy
 6a1KYnGdN3d1WvGGcKqWgrtJIQqSqLm22lnN4hrXQ1RYB9xPs6lEV6s7DpCih2jhPY7c
 ATVWCAA/qkq5dBnMDPlpgiyl+P/x2itC64+3/Fm9SVb3NRpCUWQ5c56i0WJECU+wPneO
 DPUbH5u5PpOtxEuffqgr684q4Auw1D5V+Sz7riTSza/EhEexc8Rg9hEY3pY/PupR6p/e
 vhcQ==
X-Gm-Message-State: APjAAAUW/LGMgoKzBmLiNMBuUeXgEWyA+G3PxbXsHq0qFjZH5GZoaXZ+
 cEFy1zuFrczlqvjZNVbUr//jx9VBacY=
X-Google-Smtp-Source: APXvYqxkWvvt+Nvam0L+dtkOn5XhJZXZfQXFMIbEnHWj2E1QjOGm7wDUQWSACyVhfAgQ0aCi1Z4GbA==
X-Received: by 2002:a05:620a:2094:: with SMTP id
 e20mr40424233qka.315.1579419606458; 
 Sat, 18 Jan 2020 23:40:06 -0800 (PST)
Received: from [192.168.1.117] ([75.102.135.197])
 by smtp.googlemail.com with ESMTPSA id o33sm16355188qta.27.2020.01.18.23.40.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 18 Jan 2020 23:40:05 -0800 (PST)
To: Christoph Hellwig <hch@lst.de>
From: Sean Anderson <seanga2@gmail.com>
Subject: Kendryte Linux Support
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
Message-ID: <752ac7ef-0dfb-2373-972e-d5cd48f1284e@gmail.com>
Date: Sun, 19 Jan 2020 02:40:05 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200118_234009_536492_A780731E 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (seanga2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (seanga2[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:72d listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Christoph,

I saw you were working on adding Kendryte K210 support to linux [1]. I
have been working on adding K210 support to U-Boot [2,3]. I've looked
over your commits, and I have a few questions (and comments) regarding
some of your decisions, primaryly with regard to the device tree you
added.

First, you consistently refer to the CPU which Kendryte is producing as
the "KD210," and not the "K210." I have been unable to find any
references to this name outside of the linux kernel. The only other
reference I can find is to the KD233, which is a development board for
the K210. All first- and third-party materials I could find referred to
the CPU as the K210. Could you explain your reasoning behind referring
to it as the KD210?

I think timebase-frequency should be <7800000>. This is because the
timer advances at a rate equal to 1/50th of the CPU clock [4].

In my device tree [5], I have tried to document the cache sizes for each
CPU. Some preliminary testing suggests that they have a cache-line of 32
bytes; however, I have been unable to determine this conclusively, so I
went with a conservative estimate of 64 bytes.

For the plic, I noticed that you have it set up to handle several
reserved interrupts (14-20 and 33). I don't see those mentioned anywhere
in the kendryte standalone sdk. Did you encounter those interrupts when
testing? To me, it seems like this device should be handling external
interrupts (8, 9, and 11).

I don't think the current binding for the sysctl device would be easy to
extend when more drivers are added. There are several different
registers which all have different functions. In particular, the current
binding would make the addition of a reset controller driver more
complex. I would prefer a top-level "sysctl" device with several
sub-devices each implementing one specific function. For an example,
have a look at [6].

--Sean

[1] <http://git.infradead.org/users/hch/riscv.git/shortlog/refs/heads/ken=
dryte-support>
[2] <https://github.com/Forty-Bot/u-boot/>
[3] <https://patchwork.ozlabs.org/project/uboot/list/?series=3D153419>
[4] <https://github.com/kendryte/kendryte-standalone-sdk/blob/e93950eff97=
63fd7f464c1e0e3df8aba08ccef8c/lib/drivers/clint.c#L63>
[5] <https://github.com/Forty-Bot/u-boot/blob/master/arch/riscv/dts/k210.=
dtsi>
[6] <https://github.com/Forty-Bot/u-boot/blob/571ff39868c61b925d2c27d1d69=
19257cf8f3004/arch/riscv/dts/k210.dtsi#L369>



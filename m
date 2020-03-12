Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1BAC1834C1
	for <lists+linux-riscv@lfdr.de>; Thu, 12 Mar 2020 16:20:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
	Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1ovhBLt971kjvs1zuYmI6/+XIhwI1Jyj+TEG3KyTsYk=; b=fuLJUb4LLl8N3W0E5guQv2wS7O
	C4KcfqeXx8yghrRioIUpcMLldJ9P6g62hCvGfEBv0bC2RPaDDcLtSwict2YsMOpDFgn86fl4wuhE8
	okJjPHAuHbu/EVsaRPyKwjq2cTFNGi2CVNnC229yTZZapDLmfIIOF/LrdDThdA32u6GiTxSmJJ8U1
	3tYleHl5kPzTP/kAvQybtSb42lnEAovjvV+pVXOHyOZzTVqBhG7tX6btvryeJYtGTfPmyBHw296M0
	kvy7Y9Dg4YaM/vxhQaJ8Yk6/509CKVOWm5pWfaXtfBB99Qri3P6nWBw9xcmrd/0xzCeeq31IIE4Go
	9z5alzCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCPdZ-00084T-DO; Thu, 12 Mar 2020 15:20:41 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCPdW-00081Z-58
 for linux-riscv@lists.infradead.org; Thu, 12 Mar 2020 15:20:39 +0000
Received: by mail-qt1-x842.google.com with SMTP id l21so4617458qtr.8
 for <linux-riscv@lists.infradead.org>; Thu, 12 Mar 2020 08:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=1ovhBLt971kjvs1zuYmI6/+XIhwI1Jyj+TEG3KyTsYk=;
 b=hkOXcBO2kQS1YR4+9C5U37WOzoTQLVYodp8mVA1EiFV9vUkfRzMBNOUjaITei8HbQ5
 as6kVVZRRRfkZzK0tUN8iwc923gAOh7wgT1PEUi6IZxan9pkN1kfhSC6h81H7wvph+Gn
 3D5IbjDGSy0/6nAMRcvOjNnIfyRdu1gSLvI1ZbXoaxxhNzPNhZkbrYD+7Gl4Qs1jWjN9
 ATLQTvf69+CLpD4dxMyHYd7I1ae0or3ztBpTnjcfmPEjG+8qjZ7E/Dut1V4oo0qamkyW
 qSTB6WKrbpirXuN4d4dwT4zJ9BW4CiSD9zPN78qlN+w9sRbjCzNHaCVbpPSus406MyNt
 D7yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=1ovhBLt971kjvs1zuYmI6/+XIhwI1Jyj+TEG3KyTsYk=;
 b=QFua4g9FO3fbepngUO4LSNsBKRE3h1ZliQVYYmliqUDPVgQ4ryWewBRGQmt/X4Wgj0
 2r/dz31m9MTwreWMg9HeETongVoRxbnLrQxJM2zVTMhPevwhASZly1xxEUzb0gsGEH+V
 aE5Vll+QbF3VZiIkjLm8lwuYG2eDiJwRhrPbTOhLx8My2fXnxNQNk333Zb2LJ3E6RC5N
 MtOLgr0aaJ9OuieOmGUJY6cEKNKz8gQ6PD5xTKTjvhDF+NLB/OWRu6e0BVdVUUESauZi
 UJ+c0yesaHvok+1kUYWOwOEjmKTaLFBa9MGsYSbrSYs5nwUpbSC2S1gBNQ/7pbFa1Mt5
 8t8g==
X-Gm-Message-State: ANhLgQ1Rlhw7yOKKSxCMXADfiEO1fecfA7kNwnveftaf+e6i8nNme7/4
 jkWmfYC5LMSm7A0RrMv7ZNk2Q0Sm
X-Google-Smtp-Source: ADFU+vvQJAoQRXMEgooK2yJeSarZVex9iPV2YMsJEjQ8y6sPcA2wDxWm2y0KG3wu6ymn67UOq4vFXQ==
X-Received: by 2002:ac8:4419:: with SMTP id j25mr8063318qtn.140.1584026436036; 
 Thu, 12 Mar 2020 08:20:36 -0700 (PDT)
Received: from [192.168.1.201] (pool-71-163-33-7.washdc.fios.verizon.net.
 [71.163.33.7])
 by smtp.googlemail.com with ESMTPSA id u3sm8273332qkc.4.2020.03.12.08.20.34
 for <linux-riscv@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 Mar 2020 08:20:35 -0700 (PDT)
Subject: Re: [PATCH v2 9/9] riscv: Do not initialize PMP on Kendryte SoC
To: linux-riscv@lists.infradead.org
References: <20200312051107.1454880-1-damien.lemoal@wdc.com>
 <20200312051107.1454880-10-damien.lemoal@wdc.com>
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
Message-ID: <47a2207d-6c16-b007-4c35-7c1a0649ecc0@gmail.com>
Date: Thu, 12 Mar 2020 11:20:33 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200312051107.1454880-10-damien.lemoal@wdc.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_082038_225089_74A7779B 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [seanga2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [seanga2[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 3/12/20 1:11 AM, Damien Le Moal wrote:
> Commit c68a9032299e ("riscv: set pmp configuration if kernel is running
> in M-mode") added PMP initialization to M-Mode. While this patch is
> valid for any SoC following the ratified riscv specifications, the
> Kendryte K210 SoC is based on earlier unstable specifications and does
> not seem to support PMP initialization (the SoC crashes if CSR_PMPADDR0
> or CSR_PMPCFG0 are accessed).

The PMP bit has its polarity inverted in the v1.9 specification, and is
called the SUM or Supervisor User Memory Access bit.

--Sean


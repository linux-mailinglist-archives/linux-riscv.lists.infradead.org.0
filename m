Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7204183852
	for <lists+linux-riscv@lfdr.de>; Thu, 12 Mar 2020 19:14:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=otAkC5mmZLGeK2fAw0fw0esG+sgiBk7zmKTJKqmzHyg=; b=jbzqDT+ARV8LN3
	hQviMdn2u8ujKlwImUUSHXXILA2Y9KzuwSQmQsyGOkxczqiuFVKyzsUPloXo7U28S9RjXbdtV4g7k
	tdFSF2m4abyQWsuUA+m6ieCAyQ2NoOoucBHUPeXIeOrVMGmsHB2Zw+Fbq+PiUv1hUczyvHxJ2lVGK
	jm7jJf6nXYMNoR9zFej9/p7dx4MsBJc/1wUSc7X0ZCEig8zJnnlKuv08fLw8lv3ergpv7zbzaFfJ3
	KGsR9w7xh9tBM2GIRP7+qw0WnwyA7+J8lrFwAJg3vAndJ6NX6wuGbOFm4mImGY7qV9kdEjagO6DpQ
	ch9r7xFNMcC+JL4UG7kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCSLU-0001fT-Qx; Thu, 12 Mar 2020 18:14:12 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCSLR-0001ex-2z
 for linux-riscv@lists.infradead.org; Thu, 12 Mar 2020 18:14:10 +0000
Received: by mail-qk1-x742.google.com with SMTP id x1so2985157qkx.10
 for <linux-riscv@lists.infradead.org>; Thu, 12 Mar 2020 11:14:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=otAkC5mmZLGeK2fAw0fw0esG+sgiBk7zmKTJKqmzHyg=;
 b=fPho+HlpfR8MertKhKfC+QvkuYp4V0aw3ljzauv4PdjoMj4sznIi94i/RB5b4iZ0Tm
 UHJ0zEcfciNy2ZkI2DUK9FJ4Elj7z0KroMWXW/Ez2SWpE2gk7eiA0p05Ju/LxYAXr7U0
 biXBJKT0/SoGK0qfj79ajuS7opPgXGd4apsTqgvzXPZDlV6JAlwquTV40qhIBCkRcmNF
 M468oiqua1syU689+i8eGa2KPE/VAxNV5Qx3+eqnX2+u8MCRt8zoTPoKw/DlI3+QW9Bl
 tK2KMKCdVXQLS/JgMw61VnuoBsczV6lRRn7Hm9f4OhvE0zBcOfAyKD6N1KQJH0vA3Uw0
 7lKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=otAkC5mmZLGeK2fAw0fw0esG+sgiBk7zmKTJKqmzHyg=;
 b=YDDdfdFE+aqI034Ek/DjjYWyQ73jAT7LiwszXkQ1QBQdLK3gYHy3twHjd6dX2sct7y
 J9ZMGPz1wt7vO/KqT8lYTXrKMMYvtaLxX2n4TP1ncGYziMX4R/f9QnP1+7Vy8adCV92Q
 IdeAs2mCTvQ05OUjqX8j3MZkPCsFwKro9Aj1Ow9D5WjiCDZCkAA+y1Y+DVVmO2QNlxqp
 vy5b61Ltp0RHviZPPUMSQO04rACnElSfdyrx8qJTCG1xMoH60xPMUsutthDv9qu6iR8j
 23u9TfK9Xj8wj9sCb6+WHHIehrREakCv/m5Wiu3dxQRNiLJzhmK9GakjIf/bMYDTW8lF
 Y9Cw==
X-Gm-Message-State: ANhLgQ3LHL3AzVmfACjcWAoholKndcZxdvOHkviw0aKJ1pIbdUUrw0HL
 W5y+KpNqdH1EBQLSvrpGiGw=
X-Google-Smtp-Source: ADFU+vtPYBlnMdxcVNA3nuH3cBIPvyfjtdOs6FSmF+abLSe9xFiCg8cVaW6SP4cHn5e17EuQCjs8cg==
X-Received: by 2002:a37:6243:: with SMTP id w64mr8578416qkb.425.1584036845594; 
 Thu, 12 Mar 2020 11:14:05 -0700 (PDT)
Received: from [192.168.1.201] (pool-71-163-33-7.washdc.fios.verizon.net.
 [71.163.33.7])
 by smtp.googlemail.com with ESMTPSA id l3sm20104606qkl.100.2020.03.12.11.14.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 Mar 2020 11:14:05 -0700 (PDT)
Subject: Re: [PATCH v2 9/9] riscv: Do not initialize PMP on Kendryte SoC
To: Atish Patra <atishp@atishpatra.org>
References: <20200312051107.1454880-1-damien.lemoal@wdc.com>
 <20200312051107.1454880-10-damien.lemoal@wdc.com>
 <47a2207d-6c16-b007-4c35-7c1a0649ecc0@gmail.com>
 <CAOnJCUJjLB2fwW+ZAKc9nixUeJJm7pg8KxuOkqF5pvY1c0nRsw@mail.gmail.com>
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
Message-ID: <3e2ae3be-6269-acbd-6283-16c50cd119af@gmail.com>
Date: Thu, 12 Mar 2020 14:14:04 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAOnJCUJjLB2fwW+ZAKc9nixUeJJm7pg8KxuOkqF5pvY1c0nRsw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_111409_157716_26963DBD 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Damien Le Moal <Damien.LeMoal@wdc.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


> I don't think supporting old specs in Linux is a good idea. As per the
> patch guideline
> for RISC-V Linux, patches for only "frozen" or "ratified"
> specifications are allowed.
> 

Well this CPU follows the v1.9 spec. It's real hardware, if it is to be
be supported, then the 1.9 spec needs to be as well.

--Sean


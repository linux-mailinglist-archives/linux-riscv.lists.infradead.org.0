Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5491DDFC7
	for <lists+linux-riscv@lfdr.de>; Fri, 22 May 2020 08:29:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HjmL6pfe0f3OhioV2JNbpEM60lA22erI2gsb1y8QDSY=; b=KKCHeb/aEVQAGx
	zlFBpABj0lRqh7KDDvzJBvWuUnfZqdsp4pB3r+3L+ZWG2ZqxpYOXcGteRrIsGFXV55MnwuGhHOttU
	dT58jI/iPePsWLURmarXrrbAMmOFW+7lz+Zka4Aj5TJYrOEaaoBGaUTG4kr7H0c0Z2ySm5u3cemVU
	Hbm4hrZZi86W3U14nDbGZDZOcBu9ueX7zPD0eytfaThR9fKVfa2YUpxQtCXICeSNhAJc4gBkuqAEG
	sUyknH8A+RqpkP9Sl4Vl3juTa05s1DAxbM+Hb26uwkhyWAexJFkpnP8zSKnmyEKh87VS5K4oqDtAH
	lp3oc3h8wf345lAf9S/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc1Bf-0004G0-HW; Fri, 22 May 2020 06:29:43 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc1Bc-0004Fg-A7
 for linux-riscv@lists.infradead.org; Fri, 22 May 2020 06:29:41 +0000
Received: by mail-qv1-xf42.google.com with SMTP id z5so4277640qvw.4
 for <linux-riscv@lists.infradead.org>; Thu, 21 May 2020 23:29:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=HjmL6pfe0f3OhioV2JNbpEM60lA22erI2gsb1y8QDSY=;
 b=PT4yOoiuKuBt/zdxmrF57ViJ9qT4kYjccVUk7DVs1GipOIi/hfbL9Tn+woIX5fd3wM
 wIrnNvSTAYlQb7jgE5DUtDGU28+L7wK9Hc21fd43W8HRmTpJlLck6DsR1xgmoMxSdZLv
 0UjE2FWy02blFLBedkvCwOdgLSud9h4kfXlPTWpWBXSE6nU+HyQlkVTdOkMAqwjPjhhe
 SWbw+VF30WeZNPacf1fW49o2HbnC1oRKurYqgjoNRLMIWvxL4IreseJZK4VKskzt2bFf
 GsNys43B9ssz6DIml/iE/vIJmO7UKbtBWOqTcO+dBgTyYdzSRyphExX9opYO73n+L0f+
 asug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=HjmL6pfe0f3OhioV2JNbpEM60lA22erI2gsb1y8QDSY=;
 b=BysLQCyxSrsW5NI35+mmGZOgm1FnJ1N8D4hBPh7Jbpm/Dt5JMNlV7gcI5SkxY8z0+q
 aXcfv/SRSnkwui1AyQHtGr0jkA9+GxqkUxdGpey2zDyoijnYHecfN9X1szfE7DtpeK9r
 BzLc1WqN0hc/hg32PAqLwCT5pa8wlXMDKz6RQTL8Dwoazfb7mt5YK87f1b5TH034kDuF
 4NVCFyi+x3EVhYPjNVoVP2IRMK9Hzfa1tJO2w0r26CFq/Ok8H/3SYl9tQmRSRqgOYSZX
 oGXmjgFKeh05Pa1ZiFEqroporbQNTca+ismLHIO15ZbTptdrv/zCq7l4k5VqppNqstr0
 O/Og==
X-Gm-Message-State: AOAM533p41mAxK7AObCMdmyhj07P9pOQwaZmeDZzwpsUzgKrfh4zz7qa
 gwfqTP50zbw+iT6AE7lqJoScGF4L6yLApw==
X-Google-Smtp-Source: ABdhPJyBja49phXuJS/COK+hhpwZH7O+f/HMQzLZuJcaLN+ios1xoFmUBHgcTYOnRbcjwNR4GhzggQ==
X-Received: by 2002:a0c:b60c:: with SMTP id f12mr2308661qve.244.1590128978414; 
 Thu, 21 May 2020 23:29:38 -0700 (PDT)
Received: from [192.168.1.209] (pool-108-51-35-162.washdc.fios.verizon.net.
 [108.51.35.162])
 by smtp.googlemail.com with ESMTPSA id v4sm6198876qkv.43.2020.05.21.23.29.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 May 2020 23:29:37 -0700 (PDT)
Subject: Re: [PATCH 5/5] dt-bindings: timer: Add CLINT bindings
To: Anup Patel <anup@brainfault.org>
References: <20200521134544.816918-1-anup.patel@wdc.com>
 <20200521134544.816918-6-anup.patel@wdc.com>
 <2aec08b7-7197-4b60-89d9-c3b0d5a8a258@gmail.com>
 <CAAhSdy0OuxCwMVPBrvPpYMfVrhUuY3pONysk75yognOM5-0U+g@mail.gmail.com>
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
Message-ID: <c0e9e625-daf8-b72f-2237-06018ff5d8a0@gmail.com>
Date: Fri, 22 May 2020 02:29:36 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAAhSdy0OuxCwMVPBrvPpYMfVrhUuY3pONysk75yognOM5-0U+g@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_232940_351837_2872CDEA 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [seanga2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [seanga2[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Damien Le Moal <damien.lemoal@wdc.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Anup Patel <anup.patel@wdc.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Rob Herring <robh+dt@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Albert Ou <aou@eecs.berkeley.edu>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 5/22/20 1:54 AM, Anup Patel wrote:
> On Fri, May 22, 2020 at 1:35 AM Sean Anderson <seanga2@gmail.com> wrote=
:
>>
>> On 5/21/20 9:45 AM, Anup Patel wrote:
>>> +Required properties:
>>> +- compatible : "sifive,clint-1.0.0" and a string identifying the act=
ual
>>> +  detailed implementation in case that specific bugs need to be work=
ed around.
>>
>> Should the "riscv,clint0" compatible string be documented here? This
>=20
> Yes, I forgot to add this compatible string. I will add in v2.
>=20
>> peripheral is not really specific to sifive, as it is present in most
>> rocket-chip cores.
>=20
> I agree that CLINT is present in a lot of non-SiFive RISC-V SOCs and
> FPGAs but this IP is only documented as part of SiFive FU540 SOC.
> (Refer, https://static.dev.sifive.com/FU540-C000-v1.0.pdf)
>=20
> The RISC-V foundation should host the CLINT spec independently
> under https://github.com/riscv and make CLINT spec totally open.
>=20
> For now, I have documented it just like PLIC DT bindings found at:
> Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.=
0.txt

The PLIC seems to have its own RISC-V-sponsored documentation [1] which
was split off from the older privileged specs. By your logic above,
should it be renamed to riscv,plic0.txt (with a corresponding change in
the documented compatible strings)?

[1] https://github.com/riscv/riscv-plic-spec

>=20
> If RISC-V maintainers agree then I will document it as "RISC-V CLINT".
>=20
> @Palmer ?? @Paul ??
>=20
> Regards,
> Anup
>=20

--Sean



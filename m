Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB2617CAA5
	for <lists+linux-riscv@lfdr.de>; Sat,  7 Mar 2020 03:09:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tls2mNE0mgH/m72ejfEiFKbFJFZUwvBxbASjV8o6WPs=; b=jZqXZthJRBduHu
	zIX5qHRskoei2K8m5WPlUR1CxATKKLT5ouVOsEMRv9m52Yrkr6/KMJX/q4mEqtvm59nIuzA5UWjSr
	fZMQposDrDYzfkX+s115hXnhdJanrpuM6yxK7n+YOxQEa7ta3UjfO1tEWCI5MST0Ky5Y0AcylA/0e
	oINoHdHN3AgC6LbAwOC9Fh/GIIH+JWMIbv2vLroG7iBF+focwlRoux5lnJr+lT+WvkvSnrGZky/py
	H/1N1qmBc78MxLqYM9G3cTPYZzFPA0TqXhyAzLTJ+ctw5G4BJwGBkp5aovv5XQUO1HeoXttuK3uQu
	zAtkFXMB8B0jn8bW33eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAOti-0005p0-Cy; Sat, 07 Mar 2020 02:09:02 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAOte-0005oR-SW
 for linux-riscv@lists.infradead.org; Sat, 07 Mar 2020 02:09:00 +0000
Received: by mail-qk1-x744.google.com with SMTP id 145so4250213qkl.2
 for <linux-riscv@lists.infradead.org>; Fri, 06 Mar 2020 18:08:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=tls2mNE0mgH/m72ejfEiFKbFJFZUwvBxbASjV8o6WPs=;
 b=T6Px7hIOxXa/zQPsJE3eWp4BzBTZB4WjXOjxL+ucDCduGt8dLKABQEN3eiWugAhxvz
 Ttod90HZDrPnnO9aBSL/MOjZEMPEq26jdOHmDKpYXwLC210CGTUSkAfRM9kDhQ3f4P7+
 T1iGJMnZb5apc6WpIG/mPy0Iq3pw3871t0xH56uQLUtjWTovGuSyrCPfuCgzzSd8Cytz
 woSZ5UX1qcNE0cZHhwy89FmswWqhF+4ZDQ8ccMNOH23lTzOsaeI0yIAuz4LLalFUOJ1V
 uYz389dvjMtlW1bzofpr1DT4/tWHQeWvU+erfP1bxsmWR8EXPhlIwz0PCDczH8u5l408
 Hg8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=tls2mNE0mgH/m72ejfEiFKbFJFZUwvBxbASjV8o6WPs=;
 b=V8r/dANdRCqR5sp3Ri4UtRdiHfMFlVsBGtKAqFnaWuPs1zcQE5WyhzoBakEl5YN0pN
 H30BR9IWx2+5DEsIvAYoH5g4/7/PE8GyxFpYEftjSuDVCp365dDXDB8+fRbt/QYKznn5
 EW2Q+MvfGEV4GIlsm4H+6EKM8+e63UtGCMncfb00GtJkErFSq8r0BcC9uv+xLQA9ipcu
 Zj+Et7nvS6vb1/Znlo0GxmMTabqHqFd578rPZPkhSyTDCMIHT/hT7RUnf9I9nltEPQnO
 gO9onv7JVE93H9bojChubBnURARxu3vTczEtIaBoT1QJf9BDm60BBsILVs6r5ozjvvFy
 8ZZQ==
X-Gm-Message-State: ANhLgQ357P6V/fsC4UiK9WMranYHM5sKLJ7aUviHa2W9Qa3gIAlHza+X
 DhnutrewihqkgIJnG+IZXXA=
X-Google-Smtp-Source: ADFU+vvafL9jqo2dqHuGg5s7tyuupp+aJW5n3S925P/LquFC4aL3mqqiPvNQ5cy5njMUXOryAd2mZg==
X-Received: by 2002:a05:620a:994:: with SMTP id
 x20mr5386731qkx.489.1583546935378; 
 Fri, 06 Mar 2020 18:08:55 -0800 (PST)
Received: from [192.168.1.117] ([75.102.135.197])
 by smtp.googlemail.com with ESMTPSA id b11sm1056745qtp.82.2020.03.06.18.08.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Mar 2020 18:08:54 -0800 (PST)
Subject: Re: [PATCH 04/10] riscv: Add BUILTIN_DTB support
To: Atish Patra <Atish.Patra@wdc.com>,
 "atishp@atishpatra.org" <atishp@atishpatra.org>,
 Damien Le Moal <Damien.LeMoal@wdc.com>
References: <20200212103432.660256-5-damien.lemoal@wdc.com>
 <mhng-c45590f0-38f8-42db-a746-e9970c62e25d@palmerdabbelt-glaptop1>
 <MN2PR04MB6061D77B37B5BFD3851F661F8DE20@MN2PR04MB6061.namprd04.prod.outlook.com>
 <BYAPR04MB5816059C01B77CE5D7E02E40E7E20@BYAPR04MB5816.namprd04.prod.outlook.com>
 <CAOnJCUJYcuvyHywV0vEzMcgUJaoUHfuLbWjp1bxDw2t-OJXOQw@mail.gmail.com>
 <c84b632a-9372-fcbf-de3d-be016d36a970@gmail.com>
 <38c188169a59df88bafc2ade4eb4f642dbe07582.camel@wdc.com>
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
Message-ID: <809903a7-1a34-0d2c-fbfe-a92d321d8b81@gmail.com>
Date: Fri, 6 Mar 2020 21:08:53 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <38c188169a59df88bafc2ade4eb4f642dbe07582.camel@wdc.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_180858_947909_96DD4E17 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [seanga2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [seanga2[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Anup Patel <Anup.Patel@wdc.com>, "palmer@dabbelt.com" <palmer@dabbelt.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


> Just to avoid confusion: SBI is the specification and OpenSBI is the
> implementation. I think you meant OpenSBI here. It is possible but the
> question is whether it should be done by OpenSBI. Because OpenSBI is
> supposed to provide the SBI implementation. As NOMMU Linux doesn't need
> any of the SBI, I think it would be unnecessary to keep the OpenSBI
> code resident after Linux boots.

I mean OpenSBI when I talk about it having support. I mean SBI when I
talk about setting up the MMU. You're right that M-mode linux doesn't
need it, though these are some issues we will need to deal with when
looking at an S-mode port.

> 
> I think U-Boot or a separate loader is an ideal solution but I see
> your U-Boot patches mention that loading an Image still is an issue.

Yeah, I suspect it's just a memory layout problem. Hopefully I can
figure out how to get everything working.

> However, everybody needs to agree that booting single Linux kernel
> image on all boards(at least supported in upstream Linux)
> can be documented as a hard requirement before we discuss more on this
> topic. If that is possible, it is easier to enforce booting protocol
> (a0 - hartid, a1 - DTB and no builtin DTB) as well. I am not sure if
> that is the best approach but that's what we have currently.

I think it is a good goal to have one kernel for all the K210 boards,
and just have different device trees.

--Sean


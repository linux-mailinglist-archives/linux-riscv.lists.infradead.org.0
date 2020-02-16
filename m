Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 534801604B1
	for <lists+linux-riscv@lfdr.de>; Sun, 16 Feb 2020 17:06:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AobHKk3vBm9FrVdMqe66B3ejvK1eiS83jlWFhdT/c70=; b=H9oswN9r3URqhr
	Kjq4zEKrVP6SRGBWY3qRSOBq0Pb3ohM/vWuql3Xt2PdbaRZ6d1cOqNOnfGtXf6hhcbAoJ1eOpiQGk
	BI05o3wnVVpVIs+tLzjZQltgix+uRUJTjaVkY48lYlXAxCvRh0jZSZk7GmCcTZHGTMoYrTSRVvW4R
	XjZXPdB2gIBBZ0Xpv0lSY2gAoNL2HMPFtCi79uhucJAaa+MS3oLh1U+JuR+HVZaHUAxsOGsI6y8Vz
	euQqj6I88DPrfkEICybqf6G/UO0xXE90jwFB8PGVj8dkT+ZURPMy7/Qel9B1jhT66dNIsP9RLhSFF
	2fCmfKipNhW4uFyOGdUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3MQt-0006kI-Lj; Sun, 16 Feb 2020 16:06:11 +0000
Received: from mout.web.de ([212.227.15.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3MQp-0006iE-Hg
 for linux-riscv@lists.infradead.org; Sun, 16 Feb 2020 16:06:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1581869161;
 bh=AobHKk3vBm9FrVdMqe66B3ejvK1eiS83jlWFhdT/c70=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=TBtr+sFo3loTjlzzWU6woP7mKt8KuLd5ONkSYSIhchvIcCJ+vtrnPuKszWfUW/CKS
 zk6fdy06gGKdzhBDFAhCL15WTNYGfvSeeBi74XIMbJsH5ltVYWpjJksBgh7/vwNAB8
 gxGlIGMIjlisDTUKXgCewb4WbHy1uTO7orVqNMeo=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.10] ([95.157.55.156]) by smtp.web.de (mrweb004
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0Mck7d-1ilQ2S1ugz-00HsN2; Sun, 16
 Feb 2020 17:06:01 +0100
Subject: Re: [PATCH v2 2/3] riscv: End kernel region search in setup_bootmem
 earlier
To: Alex Ghiti <alex@ghiti.fr>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 linux-riscv@lists.infradead.org
References: <cover.1581767384.git.jan.kiszka@web.de>
 <b11898805c2f9f01b10867a05701aa0fafeaa886.1581767384.git.jan.kiszka@web.de>
 <8f0ddf1f-1ea9-8bde-76a0-ba60788c2a2d@ghiti.fr>
From: Jan Kiszka <jan.kiszka@web.de>
Message-ID: <f64451c2-48b4-c998-c89f-29b11b371e55@web.de>
Date: Sun, 16 Feb 2020 17:06:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <8f0ddf1f-1ea9-8bde-76a0-ba60788c2a2d@ghiti.fr>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:BNUGMNynh2H7lblQTG5gLUjL4r434OMOeK/3yasuqwSBf2uj4M1
 uwFfD1wA3Yb2iql9LqElWiM1YM7EP4WZpOKmQ9j6cZQyi+tuKEF7iIZR2rM2+NGXKQuGBZq
 C6G27L9LMUDiPglE49pHV5C7Tr0XhmpbLJigfrADJyetdgkVhpgh51I2OJxn0Yz9n/+Hzlj
 vcyY6emlVq4y0nMRlJ/aA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:oNPKDImTF/Q=:3O7jbyb5rwmIMs1StldLZY
 hKYqBKBPdW+7ZaUWd/MEcybF0rcD3ym//65j7JafDK44leGZERr0pVuq4pZxecggFKYw2onjS
 GnKIYEg3FizrbUi5fLZ+0Hbf1zs3HlUs/RjNfmGdvQUNFLe17lK0FNzoBqXEqjYXzogb1USsQ
 UAdvTIG8e2bIhoJJNNrXRLks0F8EOpQVdmjwy58y/die8O2huI8qpauCquO4kL3U6NEfkKQVK
 rroMUymzW1uarZyPBkXZzzLFO/zREcVMllnVjP/wrnAtj6ADuSTpd8lOyn4kxq6iGtQDiqgGe
 vsdxbegbJ5kYw5lbTWJx4QNesyOWcZLpPC8tNAcom9lAj7iTmaDKPsFd6yX9kKDEgHhEp4/vW
 /clKvFIo4RcGDFJXEnASyj7KftYYALp5LmtumHLuai5isT2T56F7nOlKb7/KyuPyF9SiQilgP
 rKdeRF8IRKjbXD8I5J6zCjrhoSD6P+NSWtEWtcL505CGlruCLma6g3250cq5qPQfmGy75oW//
 poa+w7F3pLdldrAq16Ac3HpZzG6mFXx5NC/T67dtFXQbWTuL34UwuTEF/osrNv4TWSFTYca9x
 6a6km+nQbN4UzcEa4BFe7gaWJj/6OKxlDH/MeTrGORsPZLoVIWWKHIXmVR2UE3mq3AUORZSeN
 eBa+E5dL7EyvdwxZFNNCeh8Lo72e3gILdUcGUhu2M92LalIx8IkKWs6aF7+ujBKWXqEuYZkWl
 EKP6NHnZOiVHv7RG1qyoS+odr9xpMjLyaSAJQNxGipJgVQvTUGHq4yw+n5u6JQFCoa/RFvA8t
 mSnWcNs5LLPAOlKRshgn22AfYt/zG7aIXju+PwzmOvT8rNsXiu64e46qY/LPkjjmTegsua+oX
 w3Xq47ycWPebwmJuLq9McpkwpzjLyxxIMTbmjPTXc0NZVqh+3qofXHSjmjScPqvhRQvp6e0xj
 V2cgFD/c37gg7iFwM5cSMT29IErPRQMKRZsJ2uLkkzlKhNP30nFn+kC7AK6gQrca8weN5bZop
 DbpHN6vdEZPdeqRDETI7xc9VJubqGQPcnJHLMy6PKsEuaxIKn0io0kqRCadX4TDmJreJHLV1I
 6wyE7eKoKsCNyM/J7OIUkNcKQQEFz8MD3t64HYMIZ2ekoy+9FabEwzDiwMrW+UQ64uPGcCYYw
 WY/9TDIxDXosgrBkum64kjKw4S5HxSn/hdrs5ZYw4UV72iikWKmWM4lUsNj94dW+kQ5iol6kl
 XsIBpjbVEa23sgJ0B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_080607_880712_9AA517D8 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.14 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jan.kiszka[at]web.de]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 16.02.20 15:42, Alex Ghiti wrote:
> Hi Jan,
>
> On 2/15/20 6:49 AM, Jan Kiszka wrote:
>> From: Jan Kiszka <jan.kiszka@siemens.com>
>>
>> No need to look further when that single region is found.
>>
>> Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
>> =3D2D--
>> =A0 arch/riscv/mm/init.c | 2 ++
>> =A0 1 file changed, 2 insertions(+)
>>
>> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
>> index aec39a56d6cf..a774547e9021 100644
>> =3D2D-- a/arch/riscv/mm/init.c
>> +++ b/arch/riscv/mm/init.c
>> @@ -160,6 +160,8 @@ void __init setup_bootmem(void)
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (reg->base + mem_size < end)
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 memblock_remove(reg=
->base + mem_size,
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 end - reg->base - mem_size);
>> +
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 break;
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 }
>> =A0=A0=A0=A0=A0 }
>> =A0=A0=A0=A0=A0 BUG_ON(mem_size =3D3D=3D3D 0);
>> =3D2D-
>> 2.16.4
>>
>>
>
> I was looking at the test above that determines if the current memblock
> contains the kernel:
>
> if (reg->base <=3D vmlinux_end && vmlinux_end <=3D end)
>
> Shouldn't it be:
>
> if (reg->base <=3D vmlinux_start && vmlinux_end <=3D end)
>
> ?

Yes, I think you are right. Would you like to send a patch that fixes this=
?

>
> Otherwise, we can indeed stop as soon as we found the region containing
> the kernel, so feel free to add:
>
> Reviewed-by: Alexandre Ghiti <alex@ghiti.fr>
>

Thanks,
Jan


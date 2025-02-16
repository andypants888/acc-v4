PGDMP     /    2                 z            acc-v4    12.9    14.1 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16396    acc-v4    DATABASE     ]   CREATE DATABASE "acc-v4" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE "acc-v4";
                doadmin    false            �            1259    16441    admin_permissions    TABLE     J  CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 %   DROP TABLE public.admin_permissions;
       public         heap    acc-v4    false            �            1259    16439    admin_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.admin_permissions_id_seq;
       public          acc-v4    false    211            �           0    0    admin_permissions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;
          public          acc-v4    false    210            �            1259    16553    admin_permissions_role_links    TABLE     e   CREATE TABLE public.admin_permissions_role_links (
    permission_id integer,
    role_id integer
);
 0   DROP TABLE public.admin_permissions_role_links;
       public         heap    acc-v4    false            �            1259    16467    admin_roles    TABLE     ;  CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.admin_roles;
       public         heap    acc-v4    false            �            1259    16465    admin_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_roles_id_seq;
       public          acc-v4    false    215            �           0    0    admin_roles_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;
          public          acc-v4    false    214            �            1259    16454    admin_users    TABLE     B  CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.admin_users;
       public         heap    acc-v4    false            �            1259    16452    admin_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_users_id_seq;
       public          acc-v4    false    213            �           0    0    admin_users_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;
          public          acc-v4    false    212            �            1259    16558    admin_users_roles_links    TABLE     Z   CREATE TABLE public.admin_users_roles_links (
    user_id integer,
    role_id integer
);
 +   DROP TABLE public.admin_users_roles_links;
       public         heap    acc-v4    false            �            1259    16724    code_challenges    TABLE     �  CREATE TABLE public.code_challenges (
    id integer NOT NULL,
    starting_code text,
    prompt text,
    internal_label character varying(255),
    internal_notes text,
    get_starting_code_from_previous_challenge boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    published_at timestamp(6) without time zone
);
 #   DROP TABLE public.code_challenges;
       public         heap    acc-v4    false                       1259    16872    code_challenges_components    TABLE     �   CREATE TABLE public.code_challenges_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 .   DROP TABLE public.code_challenges_components;
       public         heap    acc-v4    false                       1259    16870 !   code_challenges_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.code_challenges_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.code_challenges_components_id_seq;
       public          acc-v4    false    260            �           0    0 !   code_challenges_components_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.code_challenges_components_id_seq OWNED BY public.code_challenges_components.id;
          public          acc-v4    false    259            �            1259    16722    code_challenges_id_seq    SEQUENCE     �   CREATE SEQUENCE public.code_challenges_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.code_challenges_id_seq;
       public          acc-v4    false    234            �           0    0    code_challenges_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.code_challenges_id_seq OWNED BY public.code_challenges.id;
          public          acc-v4    false    233            �            1259    16812 $   components_challenge_challenge_hints    TABLE     �   CREATE TABLE public.components_challenge_challenge_hints (
    id integer NOT NULL,
    text text,
    recommended_time_before_viewing numeric(10,2)
);
 8   DROP TABLE public.components_challenge_challenge_hints;
       public         heap    acc-v4    false            �            1259    16810 +   components_challenge_challenge_hints_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_challenge_challenge_hints_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.components_challenge_challenge_hints_id_seq;
       public          acc-v4    false    248            �           0    0 +   components_challenge_challenge_hints_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.components_challenge_challenge_hints_id_seq OWNED BY public.components_challenge_challenge_hints.id;
          public          acc-v4    false    247            �            1259    16823 )   components_challenge_code_challenge_tests    TABLE     �   CREATE TABLE public.components_challenge_code_challenge_tests (
    id integer NOT NULL,
    label character varying(255),
    internal_test text,
    further_explanation text
);
 =   DROP TABLE public.components_challenge_code_challenge_tests;
       public         heap    acc-v4    false            �            1259    16821 0   components_challenge_code_challenge_tests_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_challenge_code_challenge_tests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE public.components_challenge_code_challenge_tests_id_seq;
       public          acc-v4    false    250            �           0    0 0   components_challenge_code_challenge_tests_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_challenge_code_challenge_tests_id_seq OWNED BY public.components_challenge_code_challenge_tests.id;
          public          acc-v4    false    249            �            1259    16834 ,   components_challenge_multiple_choice_options    TABLE     �   CREATE TABLE public.components_challenge_multiple_choice_options (
    id integer NOT NULL,
    text text,
    is_correct boolean,
    incorrect_choice_explanation text
);
 @   DROP TABLE public.components_challenge_multiple_choice_options;
       public         heap    acc-v4    false            �            1259    16832 3   components_challenge_multiple_choice_options_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_challenge_multiple_choice_options_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE public.components_challenge_multiple_choice_options_id_seq;
       public          acc-v4    false    252            �           0    0 3   components_challenge_multiple_choice_options_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_challenge_multiple_choice_options_id_seq OWNED BY public.components_challenge_multiple_choice_options.id;
          public          acc-v4    false    251            �            1259    16845    components_content_challenges    TABLE     O   CREATE TABLE public.components_content_challenges (
    id integer NOT NULL
);
 1   DROP TABLE public.components_content_challenges;
       public         heap    acc-v4    false                       1259    16980 2   components_content_challenges_code_challenge_links    TABLE     �   CREATE TABLE public.components_content_challenges_code_challenge_links (
    challenges_id integer,
    code_challenge_id integer
);
 F   DROP TABLE public.components_content_challenges_code_challenge_links;
       public         heap    acc-v4    false            �            1259    16843 $   components_content_challenges_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_content_challenges_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.components_content_challenges_id_seq;
       public          acc-v4    false    254            �           0    0 $   components_content_challenges_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.components_content_challenges_id_seq OWNED BY public.components_content_challenges.id;
          public          acc-v4    false    253                       1259    17964 =   components_content_challenges_multiple_choice_challenge_links    TABLE     �   CREATE TABLE public.components_content_challenges_multiple_choice_challenge_links (
    challenges_id integer,
    multiple_choice_challenge_id integer
);
 Q   DROP TABLE public.components_content_challenges_multiple_choice_challenge_links;
       public         heap    acc-v4    false                        1259    16853 %   components_content_external_resources    TABLE     �   CREATE TABLE public.components_content_external_resources (
    id integer NOT NULL,
    name character varying(255),
    link character varying(255),
    type character varying(255)
);
 9   DROP TABLE public.components_content_external_resources;
       public         heap    acc-v4    false            �            1259    16851 ,   components_content_external_resources_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_content_external_resources_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.components_content_external_resources_id_seq;
       public          acc-v4    false    256            �           0    0 ,   components_content_external_resources_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.components_content_external_resources_id_seq OWNED BY public.components_content_external_resources.id;
          public          acc-v4    false    255                       1259    16864    components_misc_module_lessons    TABLE     P   CREATE TABLE public.components_misc_module_lessons (
    id integer NOT NULL
);
 2   DROP TABLE public.components_misc_module_lessons;
       public         heap    acc-v4    false                       1259    16862 %   components_misc_module_lessons_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_misc_module_lessons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.components_misc_module_lessons_id_seq;
       public          acc-v4    false    258            �           0    0 %   components_misc_module_lessons_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.components_misc_module_lessons_id_seq OWNED BY public.components_misc_module_lessons.id;
          public          acc-v4    false    257                       1259    16990 +   components_misc_module_lessons_lesson_links    TABLE     y   CREATE TABLE public.components_misc_module_lessons_lesson_links (
    module_lesson_id integer,
    lesson_id integer
);
 ?   DROP TABLE public.components_misc_module_lessons_lesson_links;
       public         heap    acc-v4    false            �            1259    16737    courses    TABLE     @  CREATE TABLE public.courses (
    id integer NOT NULL,
    name character varying(255),
    slug character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.courses;
       public         heap    acc-v4    false            �            1259    16735    courses_id_seq    SEQUENCE     �   CREATE SEQUENCE public.courses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.courses_id_seq;
       public          acc-v4    false    236            �           0    0    courses_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.courses_id_seq OWNED BY public.courses.id;
          public          acc-v4    false    235                       1259    16885    courses_modules_links    TABLE     \   CREATE TABLE public.courses_modules_links (
    course_id integer,
    module_id integer
);
 )   DROP TABLE public.courses_modules_links;
       public         heap    acc-v4    false            �            1259    16493    files    TABLE     {  CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.files;
       public         heap    acc-v4    false            �            1259    16491    files_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.files_id_seq;
       public          acc-v4    false    219            �           0    0    files_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;
          public          acc-v4    false    218            �            1259    16563    files_related_morphs    TABLE     �   CREATE TABLE public.files_related_morphs (
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" integer
);
 (   DROP TABLE public.files_related_morphs;
       public         heap    acc-v4    false            �            1259    16506    i18n_locale    TABLE       CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.i18n_locale;
       public         heap    acc-v4    false            �            1259    16504    i18n_locale_id_seq    SEQUENCE     �   CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.i18n_locale_id_seq;
       public          acc-v4    false    221            �           0    0    i18n_locale_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;
          public          acc-v4    false    220            �            1259    16750    lessons    TABLE     n  CREATE TABLE public.lessons (
    id integer NOT NULL,
    slug character varying(255),
    name character varying(255),
    is_hard boolean,
    internal_notes text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.lessons;
       public         heap    acc-v4    false                       1259    16892    lessons_components    TABLE     �   CREATE TABLE public.lessons_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 &   DROP TABLE public.lessons_components;
       public         heap    acc-v4    false                       1259    16890    lessons_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lessons_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.lessons_components_id_seq;
       public          acc-v4    false    263            �           0    0    lessons_components_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.lessons_components_id_seq OWNED BY public.lessons_components.id;
          public          acc-v4    false    262            �            1259    16748    lessons_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lessons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.lessons_id_seq;
       public          acc-v4    false    238            �           0    0    lessons_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.lessons_id_seq OWNED BY public.lessons.id;
          public          acc-v4    false    237                       1259    16905    lessons_module_links    TABLE     [   CREATE TABLE public.lessons_module_links (
    lesson_id integer,
    module_id integer
);
 (   DROP TABLE public.lessons_module_links;
       public         heap    acc-v4    false            	           1259    16910    lessons_syntax_entry_links    TABLE     g   CREATE TABLE public.lessons_syntax_entry_links (
    lesson_id integer,
    syntax_entry_id integer
);
 .   DROP TABLE public.lessons_syntax_entry_links;
       public         heap    acc-v4    false            �            1259    16763    modules    TABLE       CREATE TABLE public.modules (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    published_at timestamp(6) without time zone
);
    DROP TABLE public.modules;
       public         heap    acc-v4    false                       1259    16917    modules_components    TABLE     �   CREATE TABLE public.modules_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 &   DROP TABLE public.modules_components;
       public         heap    acc-v4    false            
           1259    16915    modules_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.modules_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.modules_components_id_seq;
       public          acc-v4    false    267            �           0    0    modules_components_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.modules_components_id_seq OWNED BY public.modules_components.id;
          public          acc-v4    false    266            �            1259    16761    modules_id_seq    SEQUENCE     �   CREATE SEQUENCE public.modules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.modules_id_seq;
       public          acc-v4    false    240            �           0    0    modules_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.modules_id_seq OWNED BY public.modules.id;
          public          acc-v4    false    239            �            1259    16773    multiple_choice_challenges    TABLE     v  CREATE TABLE public.multiple_choice_challenges (
    id integer NOT NULL,
    prompt text,
    internal_label character varying(255),
    can_select_multiple_options boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    published_at timestamp(6) without time zone
);
 .   DROP TABLE public.multiple_choice_challenges;
       public         heap    acc-v4    false                       1259    16932 %   multiple_choice_challenges_components    TABLE     �   CREATE TABLE public.multiple_choice_challenges_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 9   DROP TABLE public.multiple_choice_challenges_components;
       public         heap    acc-v4    false                       1259    16930 ,   multiple_choice_challenges_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.multiple_choice_challenges_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.multiple_choice_challenges_components_id_seq;
       public          acc-v4    false    269            �           0    0 ,   multiple_choice_challenges_components_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.multiple_choice_challenges_components_id_seq OWNED BY public.multiple_choice_challenges_components.id;
          public          acc-v4    false    268            �            1259    16771 !   multiple_choice_challenges_id_seq    SEQUENCE     �   CREATE SEQUENCE public.multiple_choice_challenges_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.multiple_choice_challenges_id_seq;
       public          acc-v4    false    242            �           0    0 !   multiple_choice_challenges_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.multiple_choice_challenges_id_seq OWNED BY public.multiple_choice_challenges.id;
          public          acc-v4    false    241            �            1259    16480    strapi_api_tokens    TABLE     h  CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 %   DROP TABLE public.strapi_api_tokens;
       public         heap    acc-v4    false            �            1259    16478    strapi_api_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_api_tokens_id_seq;
       public          acc-v4    false    217            �           0    0    strapi_api_tokens_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;
          public          acc-v4    false    216            �            1259    16419    strapi_core_store_settings    TABLE     �   CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
 .   DROP TABLE public.strapi_core_store_settings;
       public         heap    acc-v4    false            �            1259    16417 !   strapi_core_store_settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.strapi_core_store_settings_id_seq;
       public          acc-v4    false    207            �           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;
          public          acc-v4    false    206            �            1259    16408    strapi_database_schema    TABLE     �   CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);
 *   DROP TABLE public.strapi_database_schema;
       public         heap    acc-v4    false            �            1259    16406    strapi_database_schema_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_database_schema_id_seq;
       public          acc-v4    false    205            �           0    0    strapi_database_schema_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;
          public          acc-v4    false    204            �            1259    16400    strapi_migrations    TABLE     �   CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);
 %   DROP TABLE public.strapi_migrations;
       public         heap    acc-v4    false            �            1259    16398    strapi_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_migrations_id_seq;
       public          acc-v4    false    203            �           0    0    strapi_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;
          public          acc-v4    false    202            �            1259    16430    strapi_webhooks    TABLE     �   CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 #   DROP TABLE public.strapi_webhooks;
       public         heap    acc-v4    false            �            1259    16428    strapi_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_webhooks_id_seq;
       public          acc-v4    false    209            �           0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
          public          acc-v4    false    208            �            1259    16786 
   sublessons    TABLE     Q  CREATE TABLE public.sublessons (
    id integer NOT NULL,
    name character varying(255),
    internal_notes text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    description text,
    published_at timestamp(6) without time zone
);
    DROP TABLE public.sublessons;
       public         heap    acc-v4    false                       1259    16947    sublessons_components    TABLE     �   CREATE TABLE public.sublessons_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 )   DROP TABLE public.sublessons_components;
       public         heap    acc-v4    false                       1259    16945    sublessons_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sublessons_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.sublessons_components_id_seq;
       public          acc-v4    false    271            �           0    0    sublessons_components_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.sublessons_components_id_seq OWNED BY public.sublessons_components.id;
          public          acc-v4    false    270            �            1259    16784    sublessons_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sublessons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.sublessons_id_seq;
       public          acc-v4    false    244            �           0    0    sublessons_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.sublessons_id_seq OWNED BY public.sublessons.id;
          public          acc-v4    false    243                       1259    17845    sublessons_lesson_links    TABLE     a   CREATE TABLE public.sublessons_lesson_links (
    sublesson_id integer,
    lesson_id integer
);
 +   DROP TABLE public.sublessons_lesson_links;
       public         heap    acc-v4    false                       1259    17850    sublessons_syntax_entry_links    TABLE     m   CREATE TABLE public.sublessons_syntax_entry_links (
    sublesson_id integer,
    syntax_entry_id integer
);
 1   DROP TABLE public.sublessons_syntax_entry_links;
       public         heap    acc-v4    false            �            1259    16799    syntax_entries    TABLE     h  CREATE TABLE public.syntax_entries (
    id integer NOT NULL,
    content text,
    name character varying(255),
    internal_notes text,
    max_width integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.syntax_entries;
       public         heap    acc-v4    false            �            1259    16797    syntax_entries_id_seq    SEQUENCE     �   CREATE SEQUENCE public.syntax_entries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.syntax_entries_id_seq;
       public          acc-v4    false    246            �           0    0    syntax_entries_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.syntax_entries_id_seq OWNED BY public.syntax_entries.id;
          public          acc-v4    false    245                       1259    18078    syntax_entries_lesson_links    TABLE     h   CREATE TABLE public.syntax_entries_lesson_links (
    syntax_entry_id integer,
    lesson_id integer
);
 /   DROP TABLE public.syntax_entries_lesson_links;
       public         heap    acc-v4    false                       1259    18314    syntax_entries_sublesson_links    TABLE     n   CREATE TABLE public.syntax_entries_sublesson_links (
    syntax_entry_id integer,
    sublesson_id integer
);
 2   DROP TABLE public.syntax_entries_sublesson_links;
       public         heap    acc-v4    false            �            1259    16519    up_permissions    TABLE     �   CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.up_permissions;
       public         heap    acc-v4    false            �            1259    16517    up_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.up_permissions_id_seq;
       public          acc-v4    false    223            �           0    0    up_permissions_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;
          public          acc-v4    false    222            �            1259    16570    up_permissions_role_links    TABLE     b   CREATE TABLE public.up_permissions_role_links (
    permission_id integer,
    role_id integer
);
 -   DROP TABLE public.up_permissions_role_links;
       public         heap    acc-v4    false            �            1259    16529    up_roles    TABLE     8  CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.up_roles;
       public         heap    acc-v4    false            �            1259    16527    up_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_roles_id_seq;
       public          acc-v4    false    225            �           0    0    up_roles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;
          public          acc-v4    false    224            �            1259    16542    up_users    TABLE     �  CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.up_users;
       public         heap    acc-v4    false            �            1259    16540    up_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_users_id_seq;
       public          acc-v4    false    227            �           0    0    up_users_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;
          public          acc-v4    false    226            �            1259    16575    up_users_role_links    TABLE     V   CREATE TABLE public.up_users_role_links (
    user_id integer,
    role_id integer
);
 '   DROP TABLE public.up_users_role_links;
       public         heap    acc-v4    false                       2604    16444    admin_permissions id    DEFAULT     |   ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);
 C   ALTER TABLE public.admin_permissions ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    211    210    211                       2604    16470    admin_roles id    DEFAULT     p   ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);
 =   ALTER TABLE public.admin_roles ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    214    215    215                       2604    16457    admin_users id    DEFAULT     p   ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);
 =   ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    213    212    213                       2604    16727    code_challenges id    DEFAULT     x   ALTER TABLE ONLY public.code_challenges ALTER COLUMN id SET DEFAULT nextval('public.code_challenges_id_seq'::regclass);
 A   ALTER TABLE public.code_challenges ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    233    234    234                       2604    16875    code_challenges_components id    DEFAULT     �   ALTER TABLE ONLY public.code_challenges_components ALTER COLUMN id SET DEFAULT nextval('public.code_challenges_components_id_seq'::regclass);
 L   ALTER TABLE public.code_challenges_components ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    260    259    260                       2604    16815 '   components_challenge_challenge_hints id    DEFAULT     �   ALTER TABLE ONLY public.components_challenge_challenge_hints ALTER COLUMN id SET DEFAULT nextval('public.components_challenge_challenge_hints_id_seq'::regclass);
 V   ALTER TABLE public.components_challenge_challenge_hints ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    248    247    248                       2604    16826 ,   components_challenge_code_challenge_tests id    DEFAULT     �   ALTER TABLE ONLY public.components_challenge_code_challenge_tests ALTER COLUMN id SET DEFAULT nextval('public.components_challenge_code_challenge_tests_id_seq'::regclass);
 [   ALTER TABLE public.components_challenge_code_challenge_tests ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    250    249    250                       2604    16837 /   components_challenge_multiple_choice_options id    DEFAULT     �   ALTER TABLE ONLY public.components_challenge_multiple_choice_options ALTER COLUMN id SET DEFAULT nextval('public.components_challenge_multiple_choice_options_id_seq'::regclass);
 ^   ALTER TABLE public.components_challenge_multiple_choice_options ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    251    252    252                       2604    16848     components_content_challenges id    DEFAULT     �   ALTER TABLE ONLY public.components_content_challenges ALTER COLUMN id SET DEFAULT nextval('public.components_content_challenges_id_seq'::regclass);
 O   ALTER TABLE public.components_content_challenges ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    253    254    254                       2604    16856 (   components_content_external_resources id    DEFAULT     �   ALTER TABLE ONLY public.components_content_external_resources ALTER COLUMN id SET DEFAULT nextval('public.components_content_external_resources_id_seq'::regclass);
 W   ALTER TABLE public.components_content_external_resources ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    256    255    256                       2604    16867 !   components_misc_module_lessons id    DEFAULT     �   ALTER TABLE ONLY public.components_misc_module_lessons ALTER COLUMN id SET DEFAULT nextval('public.components_misc_module_lessons_id_seq'::regclass);
 P   ALTER TABLE public.components_misc_module_lessons ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    258    257    258                       2604    16740 
   courses id    DEFAULT     h   ALTER TABLE ONLY public.courses ALTER COLUMN id SET DEFAULT nextval('public.courses_id_seq'::regclass);
 9   ALTER TABLE public.courses ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    235    236    236            	           2604    16496    files id    DEFAULT     d   ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    218    219    219            
           2604    16509    i18n_locale id    DEFAULT     p   ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);
 =   ALTER TABLE public.i18n_locale ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    221    220    221                       2604    16753 
   lessons id    DEFAULT     h   ALTER TABLE ONLY public.lessons ALTER COLUMN id SET DEFAULT nextval('public.lessons_id_seq'::regclass);
 9   ALTER TABLE public.lessons ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    237    238    238                       2604    16895    lessons_components id    DEFAULT     ~   ALTER TABLE ONLY public.lessons_components ALTER COLUMN id SET DEFAULT nextval('public.lessons_components_id_seq'::regclass);
 D   ALTER TABLE public.lessons_components ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    263    262    263                       2604    16766 
   modules id    DEFAULT     h   ALTER TABLE ONLY public.modules ALTER COLUMN id SET DEFAULT nextval('public.modules_id_seq'::regclass);
 9   ALTER TABLE public.modules ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    239    240    240                       2604    16920    modules_components id    DEFAULT     ~   ALTER TABLE ONLY public.modules_components ALTER COLUMN id SET DEFAULT nextval('public.modules_components_id_seq'::regclass);
 D   ALTER TABLE public.modules_components ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    266    267    267                       2604    16776    multiple_choice_challenges id    DEFAULT     �   ALTER TABLE ONLY public.multiple_choice_challenges ALTER COLUMN id SET DEFAULT nextval('public.multiple_choice_challenges_id_seq'::regclass);
 L   ALTER TABLE public.multiple_choice_challenges ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    242    241    242            !           2604    16935 (   multiple_choice_challenges_components id    DEFAULT     �   ALTER TABLE ONLY public.multiple_choice_challenges_components ALTER COLUMN id SET DEFAULT nextval('public.multiple_choice_challenges_components_id_seq'::regclass);
 W   ALTER TABLE public.multiple_choice_challenges_components ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    269    268    269                       2604    16483    strapi_api_tokens id    DEFAULT     |   ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);
 C   ALTER TABLE public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    217    216    217                       2604    16422    strapi_core_store_settings id    DEFAULT     �   ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);
 L   ALTER TABLE public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    207    206    207                       2604    16411    strapi_database_schema id    DEFAULT     �   ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);
 H   ALTER TABLE public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    204    205    205                       2604    16403    strapi_migrations id    DEFAULT     |   ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);
 C   ALTER TABLE public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    202    203    203                       2604    16433    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    209    208    209                       2604    16789    sublessons id    DEFAULT     n   ALTER TABLE ONLY public.sublessons ALTER COLUMN id SET DEFAULT nextval('public.sublessons_id_seq'::regclass);
 <   ALTER TABLE public.sublessons ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    243    244    244            #           2604    16950    sublessons_components id    DEFAULT     �   ALTER TABLE ONLY public.sublessons_components ALTER COLUMN id SET DEFAULT nextval('public.sublessons_components_id_seq'::regclass);
 G   ALTER TABLE public.sublessons_components ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    270    271    271                       2604    16802    syntax_entries id    DEFAULT     v   ALTER TABLE ONLY public.syntax_entries ALTER COLUMN id SET DEFAULT nextval('public.syntax_entries_id_seq'::regclass);
 @   ALTER TABLE public.syntax_entries ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    246    245    246                       2604    16522    up_permissions id    DEFAULT     v   ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);
 @   ALTER TABLE public.up_permissions ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    222    223    223                       2604    16532    up_roles id    DEFAULT     j   ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);
 :   ALTER TABLE public.up_roles ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    224    225    225                       2604    16545    up_users id    DEFAULT     j   ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);
 :   ALTER TABLE public.up_users ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    227    226    227            x          0    16441    admin_permissions 
   TABLE DATA           �   COPY public.admin_permissions (id, action, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    211   �      �          0    16553    admin_permissions_role_links 
   TABLE DATA           N   COPY public.admin_permissions_role_links (permission_id, role_id) FROM stdin;
    public          acc-v4    false    228   i      |          0    16467    admin_roles 
   TABLE DATA           x   COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    215   9      z          0    16454    admin_users 
   TABLE DATA           �   COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    213         �          0    16558    admin_users_roles_links 
   TABLE DATA           C   COPY public.admin_users_roles_links (user_id, role_id) FROM stdin;
    public          acc-v4    false    229         �          0    16724    code_challenges 
   TABLE DATA           �   COPY public.code_challenges (id, starting_code, prompt, internal_label, internal_notes, get_starting_code_from_previous_challenge, created_at, updated_at, created_by_id, updated_by_id, published_at) FROM stdin;
    public          acc-v4    false    234   4      �          0    16872    code_challenges_components 
   TABLE DATA           q   COPY public.code_challenges_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          acc-v4    false    260   �/      �          0    16812 $   components_challenge_challenge_hints 
   TABLE DATA           i   COPY public.components_challenge_challenge_hints (id, text, recommended_time_before_viewing) FROM stdin;
    public          acc-v4    false    248   �2      �          0    16823 )   components_challenge_code_challenge_tests 
   TABLE DATA           r   COPY public.components_challenge_code_challenge_tests (id, label, internal_test, further_explanation) FROM stdin;
    public          acc-v4    false    250   +6      �          0    16834 ,   components_challenge_multiple_choice_options 
   TABLE DATA           z   COPY public.components_challenge_multiple_choice_options (id, text, is_correct, incorrect_choice_explanation) FROM stdin;
    public          acc-v4    false    252   �>      �          0    16845    components_content_challenges 
   TABLE DATA           ;   COPY public.components_content_challenges (id) FROM stdin;
    public          acc-v4    false    254   �F      �          0    16980 2   components_content_challenges_code_challenge_links 
   TABLE DATA           n   COPY public.components_content_challenges_code_challenge_links (challenges_id, code_challenge_id) FROM stdin;
    public          acc-v4    false    272   [G      �          0    17964 =   components_content_challenges_multiple_choice_challenge_links 
   TABLE DATA           �   COPY public.components_content_challenges_multiple_choice_challenge_links (challenges_id, multiple_choice_challenge_id) FROM stdin;
    public          acc-v4    false    276   �G      �          0    16853 %   components_content_external_resources 
   TABLE DATA           U   COPY public.components_content_external_resources (id, name, link, type) FROM stdin;
    public          acc-v4    false    256   7H      �          0    16864    components_misc_module_lessons 
   TABLE DATA           <   COPY public.components_misc_module_lessons (id) FROM stdin;
    public          acc-v4    false    258   �K      �          0    16990 +   components_misc_module_lessons_lesson_links 
   TABLE DATA           b   COPY public.components_misc_module_lessons_lesson_links (module_lesson_id, lesson_id) FROM stdin;
    public          acc-v4    false    273   �K      �          0    16737    courses 
   TABLE DATA           u   COPY public.courses (id, name, slug, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    236   &L      �          0    16885    courses_modules_links 
   TABLE DATA           E   COPY public.courses_modules_links (course_id, module_id) FROM stdin;
    public          acc-v4    false    261   �L      �          0    16493    files 
   TABLE DATA           �   COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    219   �L      �          0    16563    files_related_morphs 
   TABLE DATA           a   COPY public.files_related_morphs (file_id, related_id, related_type, field, "order") FROM stdin;
    public          acc-v4    false    230   �L      �          0    16506    i18n_locale 
   TABLE DATA           k   COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    221   �L      �          0    16750    lessons 
   TABLE DATA           �   COPY public.lessons (id, slug, name, is_hard, internal_notes, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    238   CM      �          0    16892    lessons_components 
   TABLE DATA           i   COPY public.lessons_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          acc-v4    false    263   �O      �          0    16905    lessons_module_links 
   TABLE DATA           D   COPY public.lessons_module_links (lesson_id, module_id) FROM stdin;
    public          acc-v4    false    264   �P      �          0    16910    lessons_syntax_entry_links 
   TABLE DATA           P   COPY public.lessons_syntax_entry_links (lesson_id, syntax_entry_id) FROM stdin;
    public          acc-v4    false    265   �P      �          0    16763    modules 
   TABLE DATA           o   COPY public.modules (id, name, created_at, updated_at, created_by_id, updated_by_id, published_at) FROM stdin;
    public          acc-v4    false    240   �P      �          0    16917    modules_components 
   TABLE DATA           i   COPY public.modules_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          acc-v4    false    267   SQ      �          0    16773    multiple_choice_challenges 
   TABLE DATA           �   COPY public.multiple_choice_challenges (id, prompt, internal_label, can_select_multiple_options, created_at, updated_at, created_by_id, updated_by_id, published_at) FROM stdin;
    public          acc-v4    false    242   �Q      �          0    16932 %   multiple_choice_challenges_components 
   TABLE DATA           |   COPY public.multiple_choice_challenges_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          acc-v4    false    269   �X      ~          0    16480    strapi_api_tokens 
   TABLE DATA           �   COPY public.strapi_api_tokens (id, name, description, type, access_key, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    217   �Z      t          0    16419    strapi_core_store_settings 
   TABLE DATA           \   COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
    public          acc-v4    false    207   [      r          0    16408    strapi_database_schema 
   TABLE DATA           J   COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
    public          acc-v4    false    205   Ut      p          0    16400    strapi_migrations 
   TABLE DATA           =   COPY public.strapi_migrations (id, name, "time") FROM stdin;
    public          acc-v4    false    203   �}      v          0    16430    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          acc-v4    false    209   ~      �          0    16786 
   sublessons 
   TABLE DATA           �   COPY public.sublessons (id, name, internal_notes, created_at, updated_at, created_by_id, updated_by_id, description, published_at) FROM stdin;
    public          acc-v4    false    244   %~      �          0    16947    sublessons_components 
   TABLE DATA           l   COPY public.sublessons_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          acc-v4    false    271   ʸ      �          0    17845    sublessons_lesson_links 
   TABLE DATA           J   COPY public.sublessons_lesson_links (sublesson_id, lesson_id) FROM stdin;
    public          acc-v4    false    274   O�      �          0    17850    sublessons_syntax_entry_links 
   TABLE DATA           V   COPY public.sublessons_syntax_entry_links (sublesson_id, syntax_entry_id) FROM stdin;
    public          acc-v4    false    275   ĺ      �          0    16799    syntax_entries 
   TABLE DATA           �   COPY public.syntax_entries (id, content, name, internal_notes, max_width, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    246   ��      �          0    18078    syntax_entries_lesson_links 
   TABLE DATA           Q   COPY public.syntax_entries_lesson_links (syntax_entry_id, lesson_id) FROM stdin;
    public          acc-v4    false    277   ��      �          0    18314    syntax_entries_sublesson_links 
   TABLE DATA           W   COPY public.syntax_entries_sublesson_links (syntax_entry_id, sublesson_id) FROM stdin;
    public          acc-v4    false    278   ǿ      �          0    16519    up_permissions 
   TABLE DATA           j   COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    223   �      �          0    16570    up_permissions_role_links 
   TABLE DATA           K   COPY public.up_permissions_role_links (permission_id, role_id) FROM stdin;
    public          acc-v4    false    231   �      �          0    16529    up_roles 
   TABLE DATA           u   COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    225   ^�      �          0    16542    up_users 
   TABLE DATA           �   COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    227   ��      �          0    16575    up_users_role_links 
   TABLE DATA           ?   COPY public.up_users_role_links (user_id, role_id) FROM stdin;
    public          acc-v4    false    232   �      �           0    0    admin_permissions_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.admin_permissions_id_seq', 268, true);
          public          acc-v4    false    210            �           0    0    admin_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);
          public          acc-v4    false    214            �           0    0    admin_users_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_users_id_seq', 2, true);
          public          acc-v4    false    212            �           0    0 !   code_challenges_components_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.code_challenges_components_id_seq', 155, true);
          public          acc-v4    false    259            �           0    0    code_challenges_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.code_challenges_id_seq', 33, true);
          public          acc-v4    false    233            �           0    0 +   components_challenge_challenge_hints_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.components_challenge_challenge_hints_id_seq', 6, true);
          public          acc-v4    false    247            �           0    0 0   components_challenge_code_challenge_tests_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public.components_challenge_code_challenge_tests_id_seq', 77, true);
          public          acc-v4    false    249            �           0    0 3   components_challenge_multiple_choice_options_id_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public.components_challenge_multiple_choice_options_id_seq', 101, true);
          public          acc-v4    false    251            �           0    0 $   components_content_challenges_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.components_content_challenges_id_seq', 56, true);
          public          acc-v4    false    253            �           0    0 ,   components_content_external_resources_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.components_content_external_resources_id_seq', 17, true);
          public          acc-v4    false    255            �           0    0 %   components_misc_module_lessons_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.components_misc_module_lessons_id_seq', 14, true);
          public          acc-v4    false    257            �           0    0    courses_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.courses_id_seq', 1, true);
          public          acc-v4    false    235            �           0    0    files_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.files_id_seq', 1, false);
          public          acc-v4    false    218            �           0    0    i18n_locale_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);
          public          acc-v4    false    220            �           0    0    lessons_components_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.lessons_components_id_seq', 35, true);
          public          acc-v4    false    262            �           0    0    lessons_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.lessons_id_seq', 14, true);
          public          acc-v4    false    237            �           0    0    modules_components_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.modules_components_id_seq', 27, true);
          public          acc-v4    false    266            �           0    0    modules_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.modules_id_seq', 2, true);
          public          acc-v4    false    239            �           0    0 ,   multiple_choice_challenges_components_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.multiple_choice_challenges_components_id_seq', 86, true);
          public          acc-v4    false    268            �           0    0 !   multiple_choice_challenges_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.multiple_choice_challenges_id_seq', 23, true);
          public          acc-v4    false    241            �           0    0    strapi_api_tokens_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);
          public          acc-v4    false    216            �           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 39, true);
          public          acc-v4    false    206            �           0    0    strapi_database_schema_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 63, true);
          public          acc-v4    false    204            �           0    0    strapi_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);
          public          acc-v4    false    202            �           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          acc-v4    false    208            �           0    0    sublessons_components_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.sublessons_components_id_seq', 206, true);
          public          acc-v4    false    270            �           0    0    sublessons_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.sublessons_id_seq', 43, true);
          public          acc-v4    false    243            �           0    0    syntax_entries_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.syntax_entries_id_seq', 6, true);
          public          acc-v4    false    245            �           0    0    up_permissions_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.up_permissions_id_seq', 20, true);
          public          acc-v4    false    222            �           0    0    up_roles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);
          public          acc-v4    false    224            �           0    0    up_users_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);
          public          acc-v4    false    226            /           2606    16449 (   admin_permissions admin_permissions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_pkey;
       public            acc-v4    false    211            7           2606    16475    admin_roles admin_roles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_pkey;
       public            acc-v4    false    215            3           2606    16462    admin_users admin_users_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_pkey;
       public            acc-v4    false    213            �           2606    16881 :   code_challenges_components code_challenges_components_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.code_challenges_components
    ADD CONSTRAINT code_challenges_components_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.code_challenges_components DROP CONSTRAINT code_challenges_components_pkey;
       public            acc-v4    false    260            \           2606    16732 $   code_challenges code_challenges_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.code_challenges
    ADD CONSTRAINT code_challenges_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.code_challenges DROP CONSTRAINT code_challenges_pkey;
       public            acc-v4    false    234            w           2606    16820 N   components_challenge_challenge_hints components_challenge_challenge_hints_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_challenge_challenge_hints
    ADD CONSTRAINT components_challenge_challenge_hints_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.components_challenge_challenge_hints DROP CONSTRAINT components_challenge_challenge_hints_pkey;
       public            acc-v4    false    248            y           2606    16831 X   components_challenge_code_challenge_tests components_challenge_code_challenge_tests_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_challenge_code_challenge_tests
    ADD CONSTRAINT components_challenge_code_challenge_tests_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_challenge_code_challenge_tests DROP CONSTRAINT components_challenge_code_challenge_tests_pkey;
       public            acc-v4    false    250            {           2606    16842 ^   components_challenge_multiple_choice_options components_challenge_multiple_choice_options_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_challenge_multiple_choice_options
    ADD CONSTRAINT components_challenge_multiple_choice_options_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_challenge_multiple_choice_options DROP CONSTRAINT components_challenge_multiple_choice_options_pkey;
       public            acc-v4    false    252            }           2606    16850 @   components_content_challenges components_content_challenges_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.components_content_challenges
    ADD CONSTRAINT components_content_challenges_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.components_content_challenges DROP CONSTRAINT components_content_challenges_pkey;
       public            acc-v4    false    254                       2606    16861 P   components_content_external_resources components_content_external_resources_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_content_external_resources
    ADD CONSTRAINT components_content_external_resources_pkey PRIMARY KEY (id);
 z   ALTER TABLE ONLY public.components_content_external_resources DROP CONSTRAINT components_content_external_resources_pkey;
       public            acc-v4    false    256            �           2606    16869 B   components_misc_module_lessons components_misc_module_lessons_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_misc_module_lessons
    ADD CONSTRAINT components_misc_module_lessons_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.components_misc_module_lessons DROP CONSTRAINT components_misc_module_lessons_pkey;
       public            acc-v4    false    258            `           2606    16745    courses courses_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_pkey;
       public            acc-v4    false    236            ?           2606    16501    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public            acc-v4    false    219            C           2606    16514    i18n_locale i18n_locale_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_pkey;
       public            acc-v4    false    221            �           2606    16901 *   lessons_components lessons_components_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.lessons_components
    ADD CONSTRAINT lessons_components_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.lessons_components DROP CONSTRAINT lessons_components_pkey;
       public            acc-v4    false    263            d           2606    16758    lessons lessons_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT lessons_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.lessons DROP CONSTRAINT lessons_pkey;
       public            acc-v4    false    238            �           2606    16926 *   modules_components modules_components_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.modules_components
    ADD CONSTRAINT modules_components_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.modules_components DROP CONSTRAINT modules_components_pkey;
       public            acc-v4    false    267            h           2606    16768    modules modules_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.modules
    ADD CONSTRAINT modules_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.modules DROP CONSTRAINT modules_pkey;
       public            acc-v4    false    240            �           2606    16941 P   multiple_choice_challenges_components multiple_choice_challenges_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.multiple_choice_challenges_components
    ADD CONSTRAINT multiple_choice_challenges_components_pkey PRIMARY KEY (id);
 z   ALTER TABLE ONLY public.multiple_choice_challenges_components DROP CONSTRAINT multiple_choice_challenges_components_pkey;
       public            acc-v4    false    269            l           2606    16781 :   multiple_choice_challenges multiple_choice_challenges_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.multiple_choice_challenges
    ADD CONSTRAINT multiple_choice_challenges_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.multiple_choice_challenges DROP CONSTRAINT multiple_choice_challenges_pkey;
       public            acc-v4    false    242            ;           2606    16488 (   strapi_api_tokens strapi_api_tokens_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_pkey;
       public            acc-v4    false    217            *           2606    16427 :   strapi_core_store_settings strapi_core_store_settings_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.strapi_core_store_settings DROP CONSTRAINT strapi_core_store_settings_pkey;
       public            acc-v4    false    207            (           2606    16416 2   strapi_database_schema strapi_database_schema_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_database_schema DROP CONSTRAINT strapi_database_schema_pkey;
       public            acc-v4    false    205            &           2606    16405 (   strapi_migrations strapi_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_migrations DROP CONSTRAINT strapi_migrations_pkey;
       public            acc-v4    false    203            ,           2606    16438 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public            acc-v4    false    209            �           2606    16956 0   sublessons_components sublessons_components_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.sublessons_components
    ADD CONSTRAINT sublessons_components_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.sublessons_components DROP CONSTRAINT sublessons_components_pkey;
       public            acc-v4    false    271            p           2606    16794    sublessons sublessons_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.sublessons
    ADD CONSTRAINT sublessons_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.sublessons DROP CONSTRAINT sublessons_pkey;
       public            acc-v4    false    244            t           2606    16807 "   syntax_entries syntax_entries_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.syntax_entries
    ADD CONSTRAINT syntax_entries_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.syntax_entries DROP CONSTRAINT syntax_entries_pkey;
       public            acc-v4    false    246            G           2606    16524 "   up_permissions up_permissions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_pkey;
       public            acc-v4    false    223            K           2606    16537    up_roles up_roles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_pkey;
       public            acc-v4    false    225            O           2606    16550    up_users up_users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_pkey;
       public            acc-v4    false    227            -           1259    16450 "   admin_permissions_created_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);
 6   DROP INDEX public.admin_permissions_created_by_id_fk;
       public            acc-v4    false    211            Q           1259    16556    admin_permissions_role_links_fk    INDEX     q   CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);
 3   DROP INDEX public.admin_permissions_role_links_fk;
       public            acc-v4    false    228            R           1259    16557 #   admin_permissions_role_links_inv_fk    INDEX     o   CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);
 7   DROP INDEX public.admin_permissions_role_links_inv_fk;
       public            acc-v4    false    228            0           1259    16451 "   admin_permissions_updated_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);
 6   DROP INDEX public.admin_permissions_updated_by_id_fk;
       public            acc-v4    false    211            5           1259    16476    admin_roles_created_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);
 0   DROP INDEX public.admin_roles_created_by_id_fk;
       public            acc-v4    false    215            8           1259    16477    admin_roles_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);
 0   DROP INDEX public.admin_roles_updated_by_id_fk;
       public            acc-v4    false    215            1           1259    16463    admin_users_created_by_id_fk    INDEX     ]   CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);
 0   DROP INDEX public.admin_users_created_by_id_fk;
       public            acc-v4    false    213            S           1259    16561    admin_users_roles_links_fk    INDEX     a   CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);
 .   DROP INDEX public.admin_users_roles_links_fk;
       public            acc-v4    false    229            T           1259    16562    admin_users_roles_links_inv_fk    INDEX     e   CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);
 2   DROP INDEX public.admin_users_roles_links_inv_fk;
       public            acc-v4    false    229            4           1259    16464    admin_users_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);
 0   DROP INDEX public.admin_users_updated_by_id_fk;
       public            acc-v4    false    213            �           1259    16883 $   code_challenges_component_type_index    INDEX     u   CREATE INDEX code_challenges_component_type_index ON public.code_challenges_components USING btree (component_type);
 8   DROP INDEX public.code_challenges_component_type_index;
       public            acc-v4    false    260            Z           1259    16733     code_challenges_created_by_id_fk    INDEX     e   CREATE INDEX code_challenges_created_by_id_fk ON public.code_challenges USING btree (created_by_id);
 4   DROP INDEX public.code_challenges_created_by_id_fk;
       public            acc-v4    false    234            �           1259    16884    code_challenges_entity_fk    INDEX     e   CREATE INDEX code_challenges_entity_fk ON public.code_challenges_components USING btree (entity_id);
 -   DROP INDEX public.code_challenges_entity_fk;
       public            acc-v4    false    260            �           1259    16882    code_challenges_field_index    INDEX     c   CREATE INDEX code_challenges_field_index ON public.code_challenges_components USING btree (field);
 /   DROP INDEX public.code_challenges_field_index;
       public            acc-v4    false    260            ]           1259    16734     code_challenges_updated_by_id_fk    INDEX     e   CREATE INDEX code_challenges_updated_by_id_fk ON public.code_challenges USING btree (updated_by_id);
 4   DROP INDEX public.code_challenges_updated_by_id_fk;
       public            acc-v4    false    234            �           1259    16983 5   components_content_challenges_code_challenge_links_fk    INDEX     �   CREATE INDEX components_content_challenges_code_challenge_links_fk ON public.components_content_challenges_code_challenge_links USING btree (challenges_id);
 I   DROP INDEX public.components_content_challenges_code_challenge_links_fk;
       public            acc-v4    false    272            �           1259    16984 9   components_content_challenges_code_challenge_links_inv_fk    INDEX     �   CREATE INDEX components_content_challenges_code_challenge_links_inv_fk ON public.components_content_challenges_code_challenge_links USING btree (code_challenge_id);
 M   DROP INDEX public.components_content_challenges_code_challenge_links_inv_fk;
       public            acc-v4    false    272            �           1259    18339 ?   components_content_challenges_multiple_choice_challenge_links_f    INDEX     �   CREATE INDEX components_content_challenges_multiple_choice_challenge_links_f ON public.components_content_challenges_multiple_choice_challenge_links USING btree (challenges_id);
 S   DROP INDEX public.components_content_challenges_multiple_choice_challenge_links_f;
       public            acc-v4    false    276            �           1259    18340 ?   components_content_challenges_multiple_choice_challenge_links_i    INDEX     �   CREATE INDEX components_content_challenges_multiple_choice_challenge_links_i ON public.components_content_challenges_multiple_choice_challenge_links USING btree (multiple_choice_challenge_id);
 S   DROP INDEX public.components_content_challenges_multiple_choice_challenge_links_i;
       public            acc-v4    false    276            �           1259    16993 .   components_misc_module_lessons_lesson_links_fk    INDEX     �   CREATE INDEX components_misc_module_lessons_lesson_links_fk ON public.components_misc_module_lessons_lesson_links USING btree (module_lesson_id);
 B   DROP INDEX public.components_misc_module_lessons_lesson_links_fk;
       public            acc-v4    false    273            �           1259    16994 2   components_misc_module_lessons_lesson_links_inv_fk    INDEX     �   CREATE INDEX components_misc_module_lessons_lesson_links_inv_fk ON public.components_misc_module_lessons_lesson_links USING btree (lesson_id);
 F   DROP INDEX public.components_misc_module_lessons_lesson_links_inv_fk;
       public            acc-v4    false    273            ^           1259    16746    courses_created_by_id_fk    INDEX     U   CREATE INDEX courses_created_by_id_fk ON public.courses USING btree (created_by_id);
 ,   DROP INDEX public.courses_created_by_id_fk;
       public            acc-v4    false    236            �           1259    16888    courses_modules_links_fk    INDEX     _   CREATE INDEX courses_modules_links_fk ON public.courses_modules_links USING btree (course_id);
 ,   DROP INDEX public.courses_modules_links_fk;
       public            acc-v4    false    261            �           1259    16889    courses_modules_links_inv_fk    INDEX     c   CREATE INDEX courses_modules_links_inv_fk ON public.courses_modules_links USING btree (module_id);
 0   DROP INDEX public.courses_modules_links_inv_fk;
       public            acc-v4    false    261            a           1259    16747    courses_updated_by_id_fk    INDEX     U   CREATE INDEX courses_updated_by_id_fk ON public.courses USING btree (updated_by_id);
 ,   DROP INDEX public.courses_updated_by_id_fk;
       public            acc-v4    false    236            =           1259    16502    files_created_by_id_fk    INDEX     Q   CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);
 *   DROP INDEX public.files_created_by_id_fk;
       public            acc-v4    false    219            U           1259    16569    files_related_morphs_fk    INDEX     [   CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);
 +   DROP INDEX public.files_related_morphs_fk;
       public            acc-v4    false    230            @           1259    16503    files_updated_by_id_fk    INDEX     Q   CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);
 *   DROP INDEX public.files_updated_by_id_fk;
       public            acc-v4    false    219            A           1259    16515    i18n_locale_created_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);
 0   DROP INDEX public.i18n_locale_created_by_id_fk;
       public            acc-v4    false    221            D           1259    16516    i18n_locale_updated_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);
 0   DROP INDEX public.i18n_locale_updated_by_id_fk;
       public            acc-v4    false    221            �           1259    16903    lessons_component_type_index    INDEX     e   CREATE INDEX lessons_component_type_index ON public.lessons_components USING btree (component_type);
 0   DROP INDEX public.lessons_component_type_index;
       public            acc-v4    false    263            b           1259    16759    lessons_created_by_id_fk    INDEX     U   CREATE INDEX lessons_created_by_id_fk ON public.lessons USING btree (created_by_id);
 ,   DROP INDEX public.lessons_created_by_id_fk;
       public            acc-v4    false    238            �           1259    16904    lessons_entity_fk    INDEX     U   CREATE INDEX lessons_entity_fk ON public.lessons_components USING btree (entity_id);
 %   DROP INDEX public.lessons_entity_fk;
       public            acc-v4    false    263            �           1259    16902    lessons_field_index    INDEX     S   CREATE INDEX lessons_field_index ON public.lessons_components USING btree (field);
 '   DROP INDEX public.lessons_field_index;
       public            acc-v4    false    263            �           1259    16908    lessons_module_links_fk    INDEX     ]   CREATE INDEX lessons_module_links_fk ON public.lessons_module_links USING btree (lesson_id);
 +   DROP INDEX public.lessons_module_links_fk;
       public            acc-v4    false    264            �           1259    16909    lessons_module_links_inv_fk    INDEX     a   CREATE INDEX lessons_module_links_inv_fk ON public.lessons_module_links USING btree (module_id);
 /   DROP INDEX public.lessons_module_links_inv_fk;
       public            acc-v4    false    264            �           1259    16913    lessons_syntax_entry_links_fk    INDEX     i   CREATE INDEX lessons_syntax_entry_links_fk ON public.lessons_syntax_entry_links USING btree (lesson_id);
 1   DROP INDEX public.lessons_syntax_entry_links_fk;
       public            acc-v4    false    265            �           1259    16914 !   lessons_syntax_entry_links_inv_fk    INDEX     s   CREATE INDEX lessons_syntax_entry_links_inv_fk ON public.lessons_syntax_entry_links USING btree (syntax_entry_id);
 5   DROP INDEX public.lessons_syntax_entry_links_inv_fk;
       public            acc-v4    false    265            e           1259    16760    lessons_updated_by_id_fk    INDEX     U   CREATE INDEX lessons_updated_by_id_fk ON public.lessons USING btree (updated_by_id);
 ,   DROP INDEX public.lessons_updated_by_id_fk;
       public            acc-v4    false    238            �           1259    16928    modules_component_type_index    INDEX     e   CREATE INDEX modules_component_type_index ON public.modules_components USING btree (component_type);
 0   DROP INDEX public.modules_component_type_index;
       public            acc-v4    false    267            f           1259    16769    modules_created_by_id_fk    INDEX     U   CREATE INDEX modules_created_by_id_fk ON public.modules USING btree (created_by_id);
 ,   DROP INDEX public.modules_created_by_id_fk;
       public            acc-v4    false    240            �           1259    16929    modules_entity_fk    INDEX     U   CREATE INDEX modules_entity_fk ON public.modules_components USING btree (entity_id);
 %   DROP INDEX public.modules_entity_fk;
       public            acc-v4    false    267            �           1259    16927    modules_field_index    INDEX     S   CREATE INDEX modules_field_index ON public.modules_components USING btree (field);
 '   DROP INDEX public.modules_field_index;
       public            acc-v4    false    267            i           1259    16770    modules_updated_by_id_fk    INDEX     U   CREATE INDEX modules_updated_by_id_fk ON public.modules USING btree (updated_by_id);
 ,   DROP INDEX public.modules_updated_by_id_fk;
       public            acc-v4    false    240            �           1259    16943 /   multiple_choice_challenges_component_type_index    INDEX     �   CREATE INDEX multiple_choice_challenges_component_type_index ON public.multiple_choice_challenges_components USING btree (component_type);
 C   DROP INDEX public.multiple_choice_challenges_component_type_index;
       public            acc-v4    false    269            j           1259    16782 +   multiple_choice_challenges_created_by_id_fk    INDEX     {   CREATE INDEX multiple_choice_challenges_created_by_id_fk ON public.multiple_choice_challenges USING btree (created_by_id);
 ?   DROP INDEX public.multiple_choice_challenges_created_by_id_fk;
       public            acc-v4    false    242            �           1259    16944 $   multiple_choice_challenges_entity_fk    INDEX     {   CREATE INDEX multiple_choice_challenges_entity_fk ON public.multiple_choice_challenges_components USING btree (entity_id);
 8   DROP INDEX public.multiple_choice_challenges_entity_fk;
       public            acc-v4    false    269            �           1259    16942 &   multiple_choice_challenges_field_index    INDEX     y   CREATE INDEX multiple_choice_challenges_field_index ON public.multiple_choice_challenges_components USING btree (field);
 :   DROP INDEX public.multiple_choice_challenges_field_index;
       public            acc-v4    false    269            m           1259    16783 +   multiple_choice_challenges_updated_by_id_fk    INDEX     {   CREATE INDEX multiple_choice_challenges_updated_by_id_fk ON public.multiple_choice_challenges USING btree (updated_by_id);
 ?   DROP INDEX public.multiple_choice_challenges_updated_by_id_fk;
       public            acc-v4    false    242            9           1259    16489 "   strapi_api_tokens_created_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);
 6   DROP INDEX public.strapi_api_tokens_created_by_id_fk;
       public            acc-v4    false    217            <           1259    16490 "   strapi_api_tokens_updated_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);
 6   DROP INDEX public.strapi_api_tokens_updated_by_id_fk;
       public            acc-v4    false    217            �           1259    16958    sublessons_component_type_index    INDEX     k   CREATE INDEX sublessons_component_type_index ON public.sublessons_components USING btree (component_type);
 3   DROP INDEX public.sublessons_component_type_index;
       public            acc-v4    false    271            n           1259    16795    sublessons_created_by_id_fk    INDEX     [   CREATE INDEX sublessons_created_by_id_fk ON public.sublessons USING btree (created_by_id);
 /   DROP INDEX public.sublessons_created_by_id_fk;
       public            acc-v4    false    244            �           1259    16959    sublessons_entity_fk    INDEX     [   CREATE INDEX sublessons_entity_fk ON public.sublessons_components USING btree (entity_id);
 (   DROP INDEX public.sublessons_entity_fk;
       public            acc-v4    false    271            �           1259    16957    sublessons_field_index    INDEX     Y   CREATE INDEX sublessons_field_index ON public.sublessons_components USING btree (field);
 *   DROP INDEX public.sublessons_field_index;
       public            acc-v4    false    271            �           1259    17848    sublessons_lesson_links_fk    INDEX     f   CREATE INDEX sublessons_lesson_links_fk ON public.sublessons_lesson_links USING btree (sublesson_id);
 .   DROP INDEX public.sublessons_lesson_links_fk;
       public            acc-v4    false    274            �           1259    17849    sublessons_lesson_links_inv_fk    INDEX     g   CREATE INDEX sublessons_lesson_links_inv_fk ON public.sublessons_lesson_links USING btree (lesson_id);
 2   DROP INDEX public.sublessons_lesson_links_inv_fk;
       public            acc-v4    false    274            �           1259    17853     sublessons_syntax_entry_links_fk    INDEX     r   CREATE INDEX sublessons_syntax_entry_links_fk ON public.sublessons_syntax_entry_links USING btree (sublesson_id);
 4   DROP INDEX public.sublessons_syntax_entry_links_fk;
       public            acc-v4    false    275            �           1259    17854 $   sublessons_syntax_entry_links_inv_fk    INDEX     y   CREATE INDEX sublessons_syntax_entry_links_inv_fk ON public.sublessons_syntax_entry_links USING btree (syntax_entry_id);
 8   DROP INDEX public.sublessons_syntax_entry_links_inv_fk;
       public            acc-v4    false    275            q           1259    16796    sublessons_updated_by_id_fk    INDEX     [   CREATE INDEX sublessons_updated_by_id_fk ON public.sublessons USING btree (updated_by_id);
 /   DROP INDEX public.sublessons_updated_by_id_fk;
       public            acc-v4    false    244            r           1259    16808    syntax_entries_created_by_id_fk    INDEX     c   CREATE INDEX syntax_entries_created_by_id_fk ON public.syntax_entries USING btree (created_by_id);
 3   DROP INDEX public.syntax_entries_created_by_id_fk;
       public            acc-v4    false    246            �           1259    18081    syntax_entries_lesson_links_fk    INDEX     q   CREATE INDEX syntax_entries_lesson_links_fk ON public.syntax_entries_lesson_links USING btree (syntax_entry_id);
 2   DROP INDEX public.syntax_entries_lesson_links_fk;
       public            acc-v4    false    277            �           1259    18082 "   syntax_entries_lesson_links_inv_fk    INDEX     o   CREATE INDEX syntax_entries_lesson_links_inv_fk ON public.syntax_entries_lesson_links USING btree (lesson_id);
 6   DROP INDEX public.syntax_entries_lesson_links_inv_fk;
       public            acc-v4    false    277            �           1259    18317 !   syntax_entries_sublesson_links_fk    INDEX     w   CREATE INDEX syntax_entries_sublesson_links_fk ON public.syntax_entries_sublesson_links USING btree (syntax_entry_id);
 5   DROP INDEX public.syntax_entries_sublesson_links_fk;
       public            acc-v4    false    278            �           1259    18318 %   syntax_entries_sublesson_links_inv_fk    INDEX     x   CREATE INDEX syntax_entries_sublesson_links_inv_fk ON public.syntax_entries_sublesson_links USING btree (sublesson_id);
 9   DROP INDEX public.syntax_entries_sublesson_links_inv_fk;
       public            acc-v4    false    278            u           1259    16809    syntax_entries_updated_by_id_fk    INDEX     c   CREATE INDEX syntax_entries_updated_by_id_fk ON public.syntax_entries USING btree (updated_by_id);
 3   DROP INDEX public.syntax_entries_updated_by_id_fk;
       public            acc-v4    false    246            E           1259    16525    up_permissions_created_by_id_fk    INDEX     c   CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);
 3   DROP INDEX public.up_permissions_created_by_id_fk;
       public            acc-v4    false    223            V           1259    16573    up_permissions_role_links_fk    INDEX     k   CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);
 0   DROP INDEX public.up_permissions_role_links_fk;
       public            acc-v4    false    231            W           1259    16574     up_permissions_role_links_inv_fk    INDEX     i   CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);
 4   DROP INDEX public.up_permissions_role_links_inv_fk;
       public            acc-v4    false    231            H           1259    16526    up_permissions_updated_by_id_fk    INDEX     c   CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);
 3   DROP INDEX public.up_permissions_updated_by_id_fk;
       public            acc-v4    false    223            I           1259    16538    up_roles_created_by_id_fk    INDEX     W   CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);
 -   DROP INDEX public.up_roles_created_by_id_fk;
       public            acc-v4    false    225            L           1259    16539    up_roles_updated_by_id_fk    INDEX     W   CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);
 -   DROP INDEX public.up_roles_updated_by_id_fk;
       public            acc-v4    false    225            M           1259    16551    up_users_created_by_id_fk    INDEX     W   CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);
 -   DROP INDEX public.up_users_created_by_id_fk;
       public            acc-v4    false    227            X           1259    16578    up_users_role_links_fk    INDEX     Y   CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);
 *   DROP INDEX public.up_users_role_links_fk;
       public            acc-v4    false    232            Y           1259    16579    up_users_role_links_inv_fk    INDEX     ]   CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);
 .   DROP INDEX public.up_users_role_links_inv_fk;
       public            acc-v4    false    232            P           1259    16552    up_users_updated_by_id_fk    INDEX     W   CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);
 -   DROP INDEX public.up_users_updated_by_id_fk;
       public            acc-v4    false    227            �           2606    16580 4   admin_permissions admin_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_created_by_id_fk;
       public          acc-v4    false    213    211    4147            �           2606    16670 <   admin_permissions_role_links admin_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_fk;
       public          acc-v4    false    4143    211    228            �           2606    16675 @   admin_permissions_role_links admin_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_inv_fk;
       public          acc-v4    false    228    4151    215            �           2606    16585 4   admin_permissions admin_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
       public          acc-v4    false    211    4147    213            �           2606    16600 (   admin_roles admin_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
       public          acc-v4    false    215    4147    213            �           2606    16605 (   admin_roles admin_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
       public          acc-v4    false    4147    215    213            �           2606    16590 (   admin_users admin_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_created_by_id_fk;
       public          acc-v4    false    4147    213    213            �           2606    16680 2   admin_users_roles_links admin_users_roles_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_fk;
       public          acc-v4    false    213    229    4147            �           2606    16685 6   admin_users_roles_links admin_users_roles_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_inv_fk;
       public          acc-v4    false    4151    215    229            �           2606    16595 (   admin_users admin_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_updated_by_id_fk;
       public          acc-v4    false    213    213    4147            �           2606    16995 0   code_challenges code_challenges_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.code_challenges
    ADD CONSTRAINT code_challenges_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.code_challenges DROP CONSTRAINT code_challenges_created_by_id_fk;
       public          acc-v4    false    234    4147    213            �           2606    17065 4   code_challenges_components code_challenges_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.code_challenges_components
    ADD CONSTRAINT code_challenges_entity_fk FOREIGN KEY (entity_id) REFERENCES public.code_challenges(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.code_challenges_components DROP CONSTRAINT code_challenges_entity_fk;
       public          acc-v4    false    234    260    4188            �           2606    17000 0   code_challenges code_challenges_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.code_challenges
    ADD CONSTRAINT code_challenges_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.code_challenges DROP CONSTRAINT code_challenges_updated_by_id_fk;
       public          acc-v4    false    234    4147    213            �           2606    17160 h   components_content_challenges_code_challenge_links components_content_challenges_code_challenge_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_content_challenges_code_challenge_links
    ADD CONSTRAINT components_content_challenges_code_challenge_links_fk FOREIGN KEY (challenges_id) REFERENCES public.components_content_challenges(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_content_challenges_code_challenge_links DROP CONSTRAINT components_content_challenges_code_challenge_links_fk;
       public          acc-v4    false    254    272    4221            �           2606    17165 l   components_content_challenges_code_challenge_links components_content_challenges_code_challenge_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_content_challenges_code_challenge_links
    ADD CONSTRAINT components_content_challenges_code_challenge_links_inv_fk FOREIGN KEY (code_challenge_id) REFERENCES public.code_challenges(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_content_challenges_code_challenge_links DROP CONSTRAINT components_content_challenges_code_challenge_links_inv_fk;
       public          acc-v4    false    4188    234    272            �           2606    18329 }   components_content_challenges_multiple_choice_challenge_links components_content_challenges_multiple_choice_challenge_links_f    FK CONSTRAINT       ALTER TABLE ONLY public.components_content_challenges_multiple_choice_challenge_links
    ADD CONSTRAINT components_content_challenges_multiple_choice_challenge_links_f FOREIGN KEY (challenges_id) REFERENCES public.components_content_challenges(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_content_challenges_multiple_choice_challenge_links DROP CONSTRAINT components_content_challenges_multiple_choice_challenge_links_f;
       public          acc-v4    false    4221    276    254            �           2606    18334 }   components_content_challenges_multiple_choice_challenge_links components_content_challenges_multiple_choice_challenge_links_i    FK CONSTRAINT       ALTER TABLE ONLY public.components_content_challenges_multiple_choice_challenge_links
    ADD CONSTRAINT components_content_challenges_multiple_choice_challenge_links_i FOREIGN KEY (multiple_choice_challenge_id) REFERENCES public.multiple_choice_challenges(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_content_challenges_multiple_choice_challenge_links DROP CONSTRAINT components_content_challenges_multiple_choice_challenge_links_i;
       public          acc-v4    false    242    4204    276            �           2606    17180 Z   components_misc_module_lessons_lesson_links components_misc_module_lessons_lesson_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_misc_module_lessons_lesson_links
    ADD CONSTRAINT components_misc_module_lessons_lesson_links_fk FOREIGN KEY (module_lesson_id) REFERENCES public.components_misc_module_lessons(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_misc_module_lessons_lesson_links DROP CONSTRAINT components_misc_module_lessons_lesson_links_fk;
       public          acc-v4    false    273    258    4225            �           2606    17185 ^   components_misc_module_lessons_lesson_links components_misc_module_lessons_lesson_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_misc_module_lessons_lesson_links
    ADD CONSTRAINT components_misc_module_lessons_lesson_links_inv_fk FOREIGN KEY (lesson_id) REFERENCES public.lessons(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_misc_module_lessons_lesson_links DROP CONSTRAINT components_misc_module_lessons_lesson_links_inv_fk;
       public          acc-v4    false    4196    273    238            �           2606    17005     courses courses_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_created_by_id_fk;
       public          acc-v4    false    4147    213    236            �           2606    17070 .   courses_modules_links courses_modules_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses_modules_links
    ADD CONSTRAINT courses_modules_links_fk FOREIGN KEY (course_id) REFERENCES public.courses(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.courses_modules_links DROP CONSTRAINT courses_modules_links_fk;
       public          acc-v4    false    236    261    4192            �           2606    17075 2   courses_modules_links courses_modules_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses_modules_links
    ADD CONSTRAINT courses_modules_links_inv_fk FOREIGN KEY (module_id) REFERENCES public.modules(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.courses_modules_links DROP CONSTRAINT courses_modules_links_inv_fk;
       public          acc-v4    false    4200    261    240            �           2606    17010     courses courses_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_updated_by_id_fk;
       public          acc-v4    false    236    4147    213            �           2606    16620    files files_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_created_by_id_fk;
       public          acc-v4    false    4147    213    219            �           2606    16690 ,   files_related_morphs files_related_morphs_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_fk;
       public          acc-v4    false    230    219    4159            �           2606    16625    files files_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_updated_by_id_fk;
       public          acc-v4    false    213    219    4147            �           2606    16630 (   i18n_locale i18n_locale_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
       public          acc-v4    false    213    4147    221            �           2606    16635 (   i18n_locale i18n_locale_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
       public          acc-v4    false    4147    221    213            �           2606    17015     lessons lessons_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT lessons_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.lessons DROP CONSTRAINT lessons_created_by_id_fk;
       public          acc-v4    false    213    4147    238            �           2606    17080 $   lessons_components lessons_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.lessons_components
    ADD CONSTRAINT lessons_entity_fk FOREIGN KEY (entity_id) REFERENCES public.lessons(id) ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.lessons_components DROP CONSTRAINT lessons_entity_fk;
       public          acc-v4    false    263    4196    238            �           2606    17085 ,   lessons_module_links lessons_module_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.lessons_module_links
    ADD CONSTRAINT lessons_module_links_fk FOREIGN KEY (lesson_id) REFERENCES public.lessons(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.lessons_module_links DROP CONSTRAINT lessons_module_links_fk;
       public          acc-v4    false    238    4196    264            �           2606    17090 0   lessons_module_links lessons_module_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.lessons_module_links
    ADD CONSTRAINT lessons_module_links_inv_fk FOREIGN KEY (module_id) REFERENCES public.modules(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.lessons_module_links DROP CONSTRAINT lessons_module_links_inv_fk;
       public          acc-v4    false    4200    264    240            �           2606    17095 8   lessons_syntax_entry_links lessons_syntax_entry_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.lessons_syntax_entry_links
    ADD CONSTRAINT lessons_syntax_entry_links_fk FOREIGN KEY (lesson_id) REFERENCES public.lessons(id) ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.lessons_syntax_entry_links DROP CONSTRAINT lessons_syntax_entry_links_fk;
       public          acc-v4    false    238    4196    265            �           2606    17100 <   lessons_syntax_entry_links lessons_syntax_entry_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.lessons_syntax_entry_links
    ADD CONSTRAINT lessons_syntax_entry_links_inv_fk FOREIGN KEY (syntax_entry_id) REFERENCES public.syntax_entries(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.lessons_syntax_entry_links DROP CONSTRAINT lessons_syntax_entry_links_inv_fk;
       public          acc-v4    false    265    246    4212            �           2606    17020     lessons lessons_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT lessons_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.lessons DROP CONSTRAINT lessons_updated_by_id_fk;
       public          acc-v4    false    4147    238    213            �           2606    17025     modules modules_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.modules
    ADD CONSTRAINT modules_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.modules DROP CONSTRAINT modules_created_by_id_fk;
       public          acc-v4    false    213    240    4147            �           2606    17105 $   modules_components modules_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.modules_components
    ADD CONSTRAINT modules_entity_fk FOREIGN KEY (entity_id) REFERENCES public.modules(id) ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.modules_components DROP CONSTRAINT modules_entity_fk;
       public          acc-v4    false    267    240    4200            �           2606    17030     modules modules_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.modules
    ADD CONSTRAINT modules_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.modules DROP CONSTRAINT modules_updated_by_id_fk;
       public          acc-v4    false    4147    213    240            �           2606    17035 F   multiple_choice_challenges multiple_choice_challenges_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.multiple_choice_challenges
    ADD CONSTRAINT multiple_choice_challenges_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 p   ALTER TABLE ONLY public.multiple_choice_challenges DROP CONSTRAINT multiple_choice_challenges_created_by_id_fk;
       public          acc-v4    false    242    4147    213            �           2606    17110 J   multiple_choice_challenges_components multiple_choice_challenges_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.multiple_choice_challenges_components
    ADD CONSTRAINT multiple_choice_challenges_entity_fk FOREIGN KEY (entity_id) REFERENCES public.multiple_choice_challenges(id) ON DELETE CASCADE;
 t   ALTER TABLE ONLY public.multiple_choice_challenges_components DROP CONSTRAINT multiple_choice_challenges_entity_fk;
       public          acc-v4    false    4204    269    242            �           2606    17040 F   multiple_choice_challenges multiple_choice_challenges_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.multiple_choice_challenges
    ADD CONSTRAINT multiple_choice_challenges_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 p   ALTER TABLE ONLY public.multiple_choice_challenges DROP CONSTRAINT multiple_choice_challenges_updated_by_id_fk;
       public          acc-v4    false    213    4147    242            �           2606    16610 4   strapi_api_tokens strapi_api_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
       public          acc-v4    false    4147    213    217            �           2606    16615 4   strapi_api_tokens strapi_api_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
       public          acc-v4    false    4147    217    213            �           2606    17045 &   sublessons sublessons_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sublessons
    ADD CONSTRAINT sublessons_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.sublessons DROP CONSTRAINT sublessons_created_by_id_fk;
       public          acc-v4    false    4147    244    213            �           2606    17115 *   sublessons_components sublessons_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sublessons_components
    ADD CONSTRAINT sublessons_entity_fk FOREIGN KEY (entity_id) REFERENCES public.sublessons(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.sublessons_components DROP CONSTRAINT sublessons_entity_fk;
       public          acc-v4    false    244    271    4208            �           2606    17860 2   sublessons_lesson_links sublessons_lesson_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sublessons_lesson_links
    ADD CONSTRAINT sublessons_lesson_links_fk FOREIGN KEY (sublesson_id) REFERENCES public.sublessons(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.sublessons_lesson_links DROP CONSTRAINT sublessons_lesson_links_fk;
       public          acc-v4    false    274    244    4208            �           2606    17865 6   sublessons_lesson_links sublessons_lesson_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sublessons_lesson_links
    ADD CONSTRAINT sublessons_lesson_links_inv_fk FOREIGN KEY (lesson_id) REFERENCES public.lessons(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.sublessons_lesson_links DROP CONSTRAINT sublessons_lesson_links_inv_fk;
       public          acc-v4    false    274    238    4196            �           2606    17870 >   sublessons_syntax_entry_links sublessons_syntax_entry_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sublessons_syntax_entry_links
    ADD CONSTRAINT sublessons_syntax_entry_links_fk FOREIGN KEY (sublesson_id) REFERENCES public.sublessons(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.sublessons_syntax_entry_links DROP CONSTRAINT sublessons_syntax_entry_links_fk;
       public          acc-v4    false    275    4208    244            �           2606    17875 B   sublessons_syntax_entry_links sublessons_syntax_entry_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sublessons_syntax_entry_links
    ADD CONSTRAINT sublessons_syntax_entry_links_inv_fk FOREIGN KEY (syntax_entry_id) REFERENCES public.syntax_entries(id) ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.sublessons_syntax_entry_links DROP CONSTRAINT sublessons_syntax_entry_links_inv_fk;
       public          acc-v4    false    275    246    4212            �           2606    17050 &   sublessons sublessons_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sublessons
    ADD CONSTRAINT sublessons_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.sublessons DROP CONSTRAINT sublessons_updated_by_id_fk;
       public          acc-v4    false    213    244    4147            �           2606    17055 .   syntax_entries syntax_entries_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.syntax_entries
    ADD CONSTRAINT syntax_entries_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.syntax_entries DROP CONSTRAINT syntax_entries_created_by_id_fk;
       public          acc-v4    false    213    246    4147            �           2606    18093 :   syntax_entries_lesson_links syntax_entries_lesson_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.syntax_entries_lesson_links
    ADD CONSTRAINT syntax_entries_lesson_links_fk FOREIGN KEY (syntax_entry_id) REFERENCES public.syntax_entries(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.syntax_entries_lesson_links DROP CONSTRAINT syntax_entries_lesson_links_fk;
       public          acc-v4    false    246    277    4212            �           2606    18098 >   syntax_entries_lesson_links syntax_entries_lesson_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.syntax_entries_lesson_links
    ADD CONSTRAINT syntax_entries_lesson_links_inv_fk FOREIGN KEY (lesson_id) REFERENCES public.lessons(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.syntax_entries_lesson_links DROP CONSTRAINT syntax_entries_lesson_links_inv_fk;
       public          acc-v4    false    277    238    4196            �           2606    18319 @   syntax_entries_sublesson_links syntax_entries_sublesson_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.syntax_entries_sublesson_links
    ADD CONSTRAINT syntax_entries_sublesson_links_fk FOREIGN KEY (syntax_entry_id) REFERENCES public.syntax_entries(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.syntax_entries_sublesson_links DROP CONSTRAINT syntax_entries_sublesson_links_fk;
       public          acc-v4    false    4212    246    278            �           2606    18324 D   syntax_entries_sublesson_links syntax_entries_sublesson_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.syntax_entries_sublesson_links
    ADD CONSTRAINT syntax_entries_sublesson_links_inv_fk FOREIGN KEY (sublesson_id) REFERENCES public.sublessons(id) ON DELETE CASCADE;
 n   ALTER TABLE ONLY public.syntax_entries_sublesson_links DROP CONSTRAINT syntax_entries_sublesson_links_inv_fk;
       public          acc-v4    false    278    244    4208            �           2606    17060 .   syntax_entries syntax_entries_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.syntax_entries
    ADD CONSTRAINT syntax_entries_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.syntax_entries DROP CONSTRAINT syntax_entries_updated_by_id_fk;
       public          acc-v4    false    246    213    4147            �           2606    16640 .   up_permissions up_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
       public          acc-v4    false    4147    223    213            �           2606    16695 6   up_permissions_role_links up_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_fk;
       public          acc-v4    false    4167    223    231            �           2606    16700 :   up_permissions_role_links up_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_inv_fk;
       public          acc-v4    false    225    4171    231            �           2606    16645 .   up_permissions up_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
       public          acc-v4    false    4147    213    223            �           2606    16650 "   up_roles up_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
       public          acc-v4    false    225    4147    213            �           2606    16655 "   up_roles up_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
       public          acc-v4    false    213    4147    225            �           2606    16660 "   up_users up_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_created_by_id_fk;
       public          acc-v4    false    213    227    4147            �           2606    16705 *   up_users_role_links up_users_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_fk;
       public          acc-v4    false    232    4175    227            �           2606    16710 .   up_users_role_links up_users_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_inv_fk;
       public          acc-v4    false    4171    232    225            �           2606    16665 "   up_users up_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
       public          acc-v4    false    213    227    4147            x   �  x��ZKo�6>ۿ��s%H��k��!M�&hI��I������w97@l�`���zf��pf8������n�MQ����4;�����g���!���\�x���Gn@ ����w��Xd�u�����%�	���1 }�d�ғ�G� =�*~=/?�|�7u��yu����=�Gќ?7iV�[y�Ψ��ǏA|�?��!� >J'VN�_���_���=��Q��=��A�B��4�ꪧU�i���֥�Le˾�(K:�vNC�2ﺼ��9����i�u��ŧG����_.6�L�i��>�h;|gy�یo)[�{|��h�Qf�uޖi�T�t�����ݍ_ۺ��/0@vUv��2Îx�,�cAE^f@l��́o��<�<d��<�XaN�V��]^������f�R�>��� B�t�q�5��ꢠ;�o���H�Q?��\6uŐ��"}����Vs1��JN���9W���䎟��;��1Ŀ�B�g.�l���E�tR!l���!ǅT�U:� J"I	�:=�^,��X�e,!�ճ+�Q�+z�nϲ,G��D��'�ޚ���Hu���s�T.K�iA���j�ZU�/�Mj��TD��m�&�ͽ#ǅ��(\�����8}x3Ղ�,��#s�P�/*��6W
�5hQ��W �M/*��P`���E�a�"/"-���C+UV��!�Q5�#��eS0EVk� }Ja�B��
c��X�IfT��}Z�h�H�1PbUp�J��:�9ks\��3qp-�����ĝU^M�M��M�v�A���e}ZKJ����9%��J�̙��B�j��m]��eV�:���e�	0!j ��c�6�B�f��f����dJ��='ǅ�X
bߎ^l��R�.Ղ� � P$�L+bC B5��t�V��@�2B���D���R-X�-Q�6ĺL+V	�*Q��T+V�F��F:T�+mr���Kj�&��&:����M<���ې� t��D�0��f:8.����D�t��ێ�9�}f$�E��?�:۳�8� ��-®O0��,|S�F���a6��Աz�����s�~��pa.<���?�za��´d�iߗ�0q��b�'��w`2A .̃nF�+��K@\<^���"�63��nYWG�����4�4�%���⹅n��WX�^�5\h�H$S�#��9͑9�q\h���O5�94��O�g��}��M��]�i�w��#�m�qa<-7�����[ԷY�ą~�m������a�k���Ŝ	��EN��'V4l�yw�nS�j�f4Ģ"h�m�D���@��j�Ş�T���
�y�E�֚�o��d_7�0j��c�3��λ˺m�N��^2�0��q��xW6��sfy[������vi���>��%jr<������8�z�x!�K���������$��rZ{�j�
1q�Lce�o,��*�ݮ��0��wuO�C�5,L���Υ�<�'�1��j�HoxB:b�g�.�v��1� .ٰH��]���H X2��𢹈A\�a�*5	V=��N1�5����ʲ�`��G]��|�~�~��c.��Hf��Rz�#�:�������}:;q�m�_V�9t�by�.KZe4����Wz͖�wN���W7��0��7��}K��z����\ ��­��p�`����hR5��S��,������2�ex��l��t/?�fpz��}��M��x �!�B���P8{6>�+B .�%����,t8��+Fo���������7��/ڱ��UW����Ǝ�l(����\,˃;�w��[��TO^�:�%I�Yk^�c�0!K�옩2}�'��[m���ef]q�r]��د����(ZU�^��?�Q�4˿>�>@� ��ȪM~�csH�������v�5�      �   �   x�%��1D��(��,brq�q�����Q�ޏ�z��{�'[��zޞ�%���a�A$q�"�}	�B!�B!�!aC��0�!�G8��p�#�G"�D �@"YN��ߒ���^�Z�*V�S�kq�f�+{�ߟ?<���u���Y��S�P�����:�M���5��������_AZ      |   �   x�u��n� @g���
q�*[��]�f��%Fr��J���"Gɀ��=$���y�{w�A�$\|���?z9f� �%f�����8�p!���r&�<(�at�MoFЛ���i3�[�䧟�:��KLkթ�Z���m����6� >�9� 2E&��2�Wd�Ԋ��6y�ڨ}.�=��N�E����a��BR�"r����U���%�~U      z   �   x�u�Ao�0���Wx�j�~-�r��m찲٦�҂V
����l�7y�=���(�����UeU�V5��maUYᬱ��R��^/s�Ȳ=�����Ev�� w���"N?����9Z8�=�C�s:�0>�,��)�3v�cP���S�_��^!L��K���r��ɚ���Dh���3�7�j�|�Z��g��_Q�F�lp�.�(`_���+�8�U�^�      �      x�3�4�2�=... ��      �      x��Z[��6�~�~��Y�I�]�T�7��:.�7��� �S�BP#+������E$��ޜ�=����|��;��<֩�j��t�<~"��c*0��(/����4ުG�'�>�����z/��"?(DJ�)���8י0�ɼ�l�ۭ2fwN���Ω2��0b�{D��t�~�+�2�)&�\��i�M��1q��D�Ln?����Mo�Ɓ���K�OW��*Xz�x��^0�������uQ]��9� ����XJ��_
���w�O*���&+?�� �_z��)����r�$՟T�5]��H��>��L���gNrPy�"l��T�Ǔ6�<T.��/J���J����{��LAcb�%�i�
f�t9m��I|�2�mI��g�[��p���_�&�܀��1����J�?;��xN�����>�t�	IQb���<[�c��x6ǃ�x�M�֑k4������&2S��^f�����X'�^�����5�_B�{��*�^&gh!;+O��}a�DT,�jL����\��u$�ve�r^V�����i�8����rE���Q,��\�~����
��E?�%�6�q��Imc���bx�0��ǔ>�(bbx>	��W�>S��(��*7sry&+{#�
��F+A�8<Ӽ]���u��8DC>UJ�����|���
)|@c*��ӄ��\;6,[:�U�7�s>tЗT��[u�&FJK�����~�e�󜈍X���Fe?�XEf���}�wl�P�\�j�\��ΗMQ/Vㅷ&�j���Oz�!���be^}��x��x��J���!N�q��b���\�2y�����BjQ?��飂�!cG;� m��d���<�X7�]Rp���ej��
*�E0q�-��R�G�^H���y|�E 2����XX�κL��dܔ"�/��d�a�%M��W��Hx����^=�ϰD�LȽ�^e��Cq��C�t6�𧋡ɌT<	���7���4���Nbظy)��\���&��[���W���a�YG"U�v0:^oV��`vn:��|O���?�t$��i��l]l$ΰ�u-+���ϟ��d���$�5���+"���3��Kz<�	ld�ޏ4��]��x�<g%�XM����=>�x3���FAӟӒ�B�
uYq"L�L�`�[!L����b�)�4\�<|�0��RC�&��ͤ.n�>������'So:�⦤�/n���R�����Q�����!(أ!����{`8�+�t�*����Ȧ
�~����a��R���<�0���2
��<�<��%ʓ%�>���W����f��S������!q���j´1c W�3��X�-d> (jq�Y5��� ��~a�N.C�"o6m�;����w%M��Q6O�9�_'��Gqd9�l�d��`Y�L#��ޒos<�y�w1]���IU.ȿ��_,B�U� 2Tv�`*z��i���&Cr8�M)� �ۇ�;[��R�d��`Ɵw Ⴄ�s���@P[�礷u=�Q�.�ӌD1ɢ � ����.�G�9Y?٨�����.&p��a�~�<�T�­�A�@�0����[���so<_vH�����_$1�Y�0����_4��Mu\�lE��ul⯦���M��(X&�?�:XI��_�Sl~�M?$�"�j��F��_l�� ��4.G�;�=C0;��FF�H� � ��'t�M�{����ޢY����}���/CN  �ŏ��(���C�b`�̚7$�`� �\^�T#+�4�,>��j��=���H� ;��
ޚ�Օ��^Q������%Ј��y\��$,*LE����A�q0k�O�F��C\%MQ�,#o@���Y��A�į8�V�M/�bܡ�7AU#-�����\f@��O�����u{�Ƅ'��-�s���ʹ�8� �:�gő�.�[>���!�C��T�e9U�.�)KX��{���Db�m�y��O�u1����f��LU�H(cKt�o���0v��hᷬJ�(T�y��?��=�G����AZ�u�2��4�-/�NV�Ӡ�F�[�'��K��p���I�HY�Er?����1��XE
&򪲡q*$�y���b��bM��ep��}AG}��]����dl>i=�}[�xO���d9���]�Kn��{i�Y|���NȚ�0p�Gl�;�����7C%��Tt	��hEt%��pe�*�v*���
T��S%��~PCH�'̼q�<G{>ɅB�nM�y�d]v��;���V���m��(=[޺b�e���as|�/�0�l���ܔ�I�%f�U~��c�DO\�p��U�	q��d9��h鼍�#��R�#;Oew*QL��c��\���za��@"Zj�:�@+����z�{Iq����]���7;�`�P���d�}L�ߐ)��x��,��RT��\n�?g��h�\.�i��-�Kc�M�o��j������ɬ��_|RW�`$�{���{2�Tc��B�'�i�S͑t���V9�������(�L�����9�E�9��_ث)���>�Њ~_��=�
�ݡgYﾸA������H�����΢T�=�W�W�Ύ4"�,�tHH�?X�u�&�V*WPg����Fr�,B6�k�O�c�	�e��lC"&�o�Z�;��� �\w.[%3x�R.5��8������t[�N[�E����Fּ����'؆��m=�љ��^U�E��ɓu����� �U%;��/���z]���Sbv�[��g���Y+�o� ��U-����5�nU��y#r�bw��w�a�L��FM{ܵR%�^,�e��
} Ĥ���_�~�,@��j.A����IlE��Q��#^���l��\YtEIWż�)�{���$�¯g[�B��lY�GbNs{x[�FtQd�(���x8
�&���r()�s
��P�癄]�c"�h�h��� ��|�ˮ<������|t��^�l���ȷY'xEH���(�t�`��da�V�(�۱����E+��%t�؅$�_鲁CŨ���i��J$hAI�Vf���4���ޗ	�8��$�6:q.�N ���s�f�5"}kJ���V�G&w��%�mr�TsQZ%S��ܢ�d��h~"V�Y��­.W��])/x*\d\! 	d(�ѿ����`S5���:Hӹ��渿O��]F�h����^R.�I�P�vhCxf9\a˔��!)|H�pH>�9�dA{D�#�Nt��bNVsE�؜39"ࢋnX&�<u�q��l"�LM6
�۱��U�����Q��Iuv�k5�k&Na9E[=��e��va7y��Saq�ѿ��;@����;M-9��l�?{�u��rk+�������7٤p�'�5��<�=A���+�ܧ����j:�&�Ys<\�g^�˃M?x�v��ͻ�mVu��q�ջ�3nԯ��U�z��\c����Qi|捗�V��̾���z'	J�&�ئ��m�+�ݵ�������/n}[��|�cla|}6�)��9u$�Y�sn�uu�k4�`ν�B	���(��=fQ#ld4�}(���H.e�l}K��ś����:��@��ʫ%���ۤ�"�l�RI���U?�RCЛ���x8���.;.i�w4�Bu�erɕ��n�0���_�۲�ί�N�ot؇��=��ܷ�:
%��v�Zɴm*z�QRVa��9�7������H�����$7��~�O��ЛL�Q5�~��_D�4D�{�T���o�bK�քe�LO��(NU�����>%�]M�)�EY-�i���}Jp���>�}�.����rm�/-9{xI8JD	'2|��+��$��`1<���(J0�U���F˽�B}FB�UJ�.{��	����$Xs�B�9pXt����9�T�@�������o9pW�)A*���i-'"~�nM�Q�U;���xC�&a����5Jug��^]:�p�-q��|�oں�������YM8�O���Hl~Q�J���đץ��9��}���d��W���X��J�����ا�B�{��`��+�����މ��g����{��r�/Ek��j���k[ �  �Q5Ï�P��Sߙ�'Eq������+ť7ki��1pP+��i��}�G��r�6Ȯ?��y���
�^����Õj
���L}�=���h�;� DHԥ��q=ث������a�u���;��h&,z������=�����h�C���UW\�k`W�	�U��z�j�\<a]��_7�7�R�ݸFN���ɋ"�zA[\q`�nqI{�;��7q*�K�Z�_ݗ��l
���Ӛ�C#��#�W���T�꠩������L	�-���S��t���}��[�>[�qz���[���$�0dCW�ؐ�abV�nH~�Hǔ������nv>�.n��#?�.��f���u�Q�my���@K���Sz�5���8�z���%M������L���      �     x����N1��������=�K���*DBp��W��h�.+}�۞�ܓ���.�?/��/����7o�׷ď�d�+�)�%{K\�/��������!}����TRUw�]�}n���.�5�p��\�p�%���
�fA�a��+�C���R;]յ�;�Ǵ�=Hu�������� ��9�hӴg�Hk�+�ҚD<7v��TK���L�i�OQm'����kS����&)�+pM�%�#pM0��?��Jɽ�a��.�W��W⧎�VCcM7��k�&a�0��Ƌ�d�Ui}�Jm�m���\���ċ&`�0����F��k"�W%<��5�x�F�6�7W%<��mlrV"���و����W�;� �D�ۚ�k�y���&���A�6��H٘�*D���W�z��U�\-pM�5�N�l,m"U��5Wsv��ՠ�#
.�#��q);���8l��?=��뿦�O���m���-���(x�V�#j�̙v��|�O������]p�k5���zN�k;3}[�jN�{RV5$����Y|��J��lk6���lL�`�`��V#��/F/��Z������ƣ�W���khr�&�u(T���&��#
��d�a, ��y�0u�o�V1Gp}M���i�kj�� ���&�����}�@'/?}$:y�5�<j�꛺!X��&�q�˶� &��#Đ����1CZ���x̘S����J^SK?��.da�`��X7yY-�X�ZZ�|��"
>�w���P�b��Wߥ���o2��m��7�&*�      �   5  x�u�Oo�0��Χ`{�n��;��E���!Ţm5�dHr<������z�A���TV��Fӧ���؁�P���JW`z���BK�6#T��
��k�´]�ѦL��.oG�($�������V�����χ�Fotl"�UM�g\U�;�1;>t����(��m�\.��#Z�ac�V��EM����V��T:J����u�r3j��R�XJتoQ��M敇��ԃ4 �Heu���)��,��ڰ�I��"*�o!��إ���L�<u�r�X�����)u!i$�᪂bf�~Ӡ���ˤ��A��)�:(v!J�R9�T��V�0e��k�8�4��k����)l���n \{����6�&��ڠ�ݹ���H8L�Di��
%`P�]pL�Ax�N8�{+��4	|\''��d���h�<��������I;i�����x��9V]a�0��hp����p��A��mO�b�A#SO�gG	��8V�ʒ��~�A� w��gfeur4c�>9;��¿)ک�ᦊ��ؚ=f�őqG�O�[�G�k@�q�^*�hSx���[��~/�l&DC�TI�ӵ6́�%?�e)�����Q��N ���a�����4��8ʃ�Ғ��� ��e�>�z�D�$O�B� ژSD����=`o�c%��7N?L�k�:��]3-b�1Y�o����0����)GA�3�-H���p�U��LVA������C'��y����6.Ǝ��3h�v���/_2���c+�u�\1��1���Ėߚ�=NpI�xÿ#=Et���R�L�Y�&_,� 3�N�      �   �  x��Y[o�8~f㇑ܦ��{����d��A[ ���)ƴD��ȢW��;����CI�d�I�`6@�����x��l'��IR���=�Y����y"M�Ě-_%����C����oB�mh�\Œ�d��dl�٭��s�|uuŝ���?�`�;�� �d���3c�=�����/#�]B�IF�Ɠ~��׈$q�-����l%#U,�l���9cp\KÍ��L��Ǧ_�qO�P�Ǧ�_�@G0�F�`g@�uY�H��;����R�U�p�����L�Q	ʥZ�7_��$a�脱��Ԯ��!��IB1�$7KaP.V�OW�79�K��L�8G�"؂u��������4!�YF Ew�R�q��n	P��}|�ƕ0�RjPs��CD�����ﾊ�i�����@_y,V�M��:\Ę��+��)�̓�%�>�ŀ�@�����u�����g�)ao.��?�@�q�����y����"�+��G*^Ȥ��)$?���r����F`6e(ds���+�r4p�6
c����u�?8�� ��A0�@��m�3�;�j�N�|�V����%b{�0�+������OOP�i��/N�-�:as�Q	�ZE���G"٧K��!m.kJ0g��r�Y��e#E�.�5�;H�[���d�n*���]����Ho�
v{PzG�围��v����"S��n�7m��N�\ס�8����|@��pݍJ�s����iw��$
ϰ��W+J�U� ��r�.��_ef���R��>v��Vҍ���+��R���p�Ԥ��"|w�ۥ�Ro������i���;6�,���¯_��i_ZB�|:�0�%-ߩ@���t8V���3��΂	z1?N�P#!��Y� �����B]�@k�N�Y���05>�f�Ȓ-�)O��D��6W߮���/��D*Og �i"b��PC�B:Ё����o��Y|�<kL#�>�v4\=QI�L�!��� ���U62zI�-��(#�k�B�����vYu�f\q���r��s��1L�I�W{L�x�L&���׬h?U����c?�N3!��'�'�X4%�*��0���I�:+F��ZT��\���~�S /��m�>���c��z��[��w]o ��xG��WR�m�;n#Fͽo��jw[�!ܩk�	�dj�^ rԇl�џ���y�:����o���f���7�]���F=`�,�r�[Ks������I����[gip�%k��H�J��u"��g��ТgN׉ ����L� י��#���̺d��z=��I0�=@s�?�#ͺs�}֊�xv����L8S6��CEߜee�,hC�Z)��C\���@� ��V�v|�E'�E��� ��voL-�� �������p��TJ����S,�Ҙ�u�r�d�?2'�rN�ݲ𠰠�É) �:�:����7��(�]&�շ7��X��}��tf0_��9��v ��~@�?��h�*^br��*/h�����-L�9�����2�e�o&l!͍��L��G�$�q�ub�<���	e�����!��ZT$��I���ˋ����k"7���l�yT�r�p�d�R�Wi�g�FڑY-�׭�Y<-��F(�����&a������'��!+Ҩ���
e���1��k�W0�9V<|�+Q+�ֽ����_��ѣV���S�X�U����.
��(��9�;�@U}}N:�>�J�'5�U�D/��a�J��h�l�`����;k��]/���4�{jC;X�^���=��C�hX��8xg��p��z3�K��W���J:F��*���p�H{��y^�;�LB�G`žB�<35�ˤ�hWr1�(��9�j�L��7y�ܪ��Rƍ�e.��l�ӰO�^���L�i�b�-�$<��Og���l���@�m�@�:����'�nG�W"ۨ�_J	��?}�N)lԼC˥��.�y�<�S�[��cpw��r���9)S�|�M�V"�5�;|kzH8`jzT����������c"���?.w8�j)i�I��:|���z)^�s�?L?���I3�;��v�3\Z�Hw�N[|E�am�����I.A|7S�N��MQ����>��5}1}��U���~�:/��bl^ґ3U���:� D��(����O�9S��66_��'��:G�[���a�:��L ��gϞ���|      �   �  x��Xmo�6�L�
6(�vs=��FA��ٺ4H�
ĴD[�%R)�j���;������_�����܅d�R͉!/�i���-� &���R��.�B�2rI�>5e!�0TH�(����I�5��_*�lؚ+�r&۔�(Z�Je(_s��Q-dķ��<�y�dv:�Q£0_P�Q�$@�)+8���,�2f�p�i-��蚥%�V�5+��4[�Ğ|��ch�7"�	�,����U��h�X�)m(�U��;Q�-Ze܈��s���nD�:�O�=͋(ar�AdE7	���ЁӠlZ�鼴"@� eᎲ\�ICc�X�:x:�+V���يJ���}�<��n�<J����^뢔��1���O:%X�,3.͖9�z��NӅ*`U�]��/���[э!�*r*8wO��7b�hC����k��)i� ��3ȗ��O�He�{�D\��'F�V� ����v�����ޮ�������.m9�n�%ahf���-c҂>A�'x������{H r�:��Y*�+���l�.�k]�m�I��mu%4�*���HH��o��ϐ]�e��<�c��4U^�		{}���M�1RRC��j١��ئ6B����@H-b�Rm�Jc��bO���TT�VǄ��HV� �XAꛄ�۷
�|rn�u�O�+$��62V��ja|
�XR�Z	�A)�'��Xp]�F{=r�]����}W�bu��y���ꊹb�0U+4l��'l����LG�ȍ�0$'o���o�!��e����8��޼4�*k�o�%���W��� ;p \�� �&o��Cd)�e��5Ļ��k�W���4��U�{T#���4�W��q��g��x����h#����e@�p<V���,x�f��e��08����x�?C�
zJ{]x�������!l���F1mk�<%#Kq�Y����aQ�V�ߡ7�A��pXZpW�-��Ƿp�2����Lr< ���FS�c�3@�_��m�%s����H�L���(��TvYfs����/g� ����B�wfA�!;@�l
Q!wPL pm��ih8 �08���]7��H�⢘���Q!���d��v�|�Ξ�?��$$��B�h0�54����6K�:�"`�ŝV�K��i���h�5������Y��0�Bl�b�F�6�jY�w��q��`B��^A��F�M5·�A)|���H��+ h,}�4�� 04oAI�1��K��.��Z�����0$��n���]��v}��������Ҿ�����n.._S����݇KzvC�_]�_����������3B�Xb��`Rd,������'-R%v|�;.uЊ���K��-g��t���I>���C�ޙ�;�poI���m^��_� Q�pP��<�F�G�M��H0�l�l	�U����7�,d�WO�-�(l�F�oݱ�/1������%��Nȟ��>�dÆ�a5�w��{C�D�~R⸌�߫�* v6���8"��죴[�� ��Gy��=W��QQ�>L<�q]�1���蹯֓z×�A�1ݣ�Ȱ˓.��Z�� �����@�F�iL+U��v�m��ϟٯ�b:=1\9��*�{�=����&}�0z|p���Z��|�i��y!*&��|�5[O�4�_�����/_�Hڗ��/p�?M��8F3�{�����Rﰔ�fv>hG*�M��-[*����d�����Lƍzs�v�w	�H�Xd!��$nEl�m��l���ڇ��T;X&�}9O�`j=�����O��p{W��>�=&d��>���We@<ܛIG�<�M�gŮB`������U0�5՘�R���	+b�:ٮR��E�������M��|-T��y��ԉ5��P[*�i\K薵��|[�A��Bdo5/�� �ox�ơ�+���Q.�4]%q���%tv�n�.]��Y��-�5��i|_4�;�h_�>�'��?�ɂ�� �h`�      �   [   x��ɍ1���巔��e�c,q��6.�|�G��dH��I��C6y�������n:�Џ^f1f�l�[��l>-$T4�������      �   p   x���@c(�s�tO/��	,)Xl��~4
��Z�𢄢1u��,:�54�;̂�~H��1��e�Y:��4k@�5��pX.��ن/;�~H� &�      �   L   x����0���0��\iم���,�r�\,-y�!ܪ�Q�:x�C�O�T���"Q���-�>Eӥ���̳㽀	��      �   ^  x��U]��6|��6�GѾ'm�^�r@�4m �ĵȘ&~Hw�뻔t��}������]�V�=a��7�����||��0�Wы��Sݺ=7(��s�ac��&-ΫWζ�S�M���(Hz�h�����!�Z�����x�-�^Kt���'蜓�f���x
��:�����źz/��v@��1	[�hwF1v��Zg{��&���;{��S�O�Ȁ"Aa��J�@�+7���?	�j:���V���A�bH˞���]�|�EH�c��qBF~�\��r�/G ��د����nR�
?����N%#�ں�Ԁ1a�5�\���������^�m�D�ɓ���A��nw�La�Ȩ:��01�/$��?��Y�ɿH�/���6G�p������;��p�V�e���S<��{4�޻;m��]�8Z�qåk#��K�6�6��Te�_�P���B[�aVz���g�w��p��CL_�>�+��Ls~ܼ�G�wԘғ�*��ј�i�N[� Q�5q� hDZd�N���Y��S}����v+(n���	ŔzKAm(p���O��dn�i��JJt����˝�i٠�ct�^� K1�����\To,HZ!
�L�-�S�)�Oof��o}?�'MthKsa��ߖ�,�����uDI%�ȧ2�)�Cp��k4H ȟ�	
m��S���v����FB�'�F�i�ba�y��-���հq�	�6�m_3F� O��5��%<y�x��7���U��ex�0SO�rq�������1 U%#�(�$�d�6�Wl�OY�|법#r���C��3گ���2��`lAg�������b�}�n�      �   '   x��I   �?a��.��!d����e;�D�4�^�b$      �   :   x�˹�0İxY�G<����:l�p��cQY�\�����f���dŁ-��`E���}�OX	M      �   f   x�3��J,K,N.�,(Qp�/�KI,���+��*�MC���Y*Z[��Z��čtuL-�Lͭ�,�,M-1�虚rqr��qqq G�w      �      x�3�4����� ]      �      x������ � �      �      x������ � �      �   <   x�3�t�K��,�P�H���L��4202�54�52Q04�2��24�325�)�D\1z\\\ ��A      �   �  x�mTMs�0=˿B7��j�B�f�L�d�i'�\�	�����]�N]��Ǭ�'��ݷ��e:_���}���cٵ��xZ��J?�W���H!��d
�r�=-K&����uB9��*���ra-�Dn4�����1��s�B!�Bry�!��琒(p�rk�LK0��ş��('���A�܈<��W�d3�!ͱ�b���{���R�g6KY�S��k�Ģ���|�m�c!�c�5���=�Y�m���@n�m��l�i�~�n�?w"��R=
;V�\��'I܂���d7�n��q��9�=�RF�.�W
�1Alq.S��乑)^;�qm�Y�%m3�"��Cw��א��ꎵ�w�ώn�s|K
���R�v�q!�5v	���ʸ'���J��N�̥M_n�]��:�`��̂ھ>���s��&�*	�k�$�/��20��U8.���/;V�ˮ��Γ���^��2��סz���cՆ0��D�m��v����S<�'k��ޏo�NH.���H1g"1������B, o��jO��k�Qs���r��+x˵<]&��8��y<=�8N�R����"��s���	���!��c�}M���ѩ}=�G���ۧ-�B#���kR�̸M��t����~;�u�8��o6���a{      �   �   x���A
�0��_"�v�o��K	���ʡ}����0+Ҙ���k��ӽ�����<�mw�'�_p��*�(d%R�P� cʹЊ�WZ���gCMk@2��-D�6e�t�F�酡���k9l�°7[�	ִ�cb�/�"8      �   /   x�3�4�2bCa
�f@l�@l	�0 � �!�0 n� ��      �      x������ � �      �   Y   x�3��J,K,N.�,(Qp�/�KI,���+�4202�54�56T02�26�21г4	���*ZZ[X�Ypq������� ��?      �   �   x���1�0D��s"�8��;p:H����������J���́A�x��t�����������:Z XLҗ����.&g_��j2�2C�d�e��?՗��ŗ�L��\�����P�ā�I��4�TP/ŁTLxL ~,m�)      �   �  x��Xmo�6�l�
.�4M�z����
�+���_���M�Bd���n���#%ʒH���"q�w�����Z�e���@|_�	Tm3 �=gE�B��11����n��m���x�	�����ǈ�4�R/r� 1阸IL����8d�UڒK�(Z��5-)[R��ՁR���s�������Zx����d=�7Mq�&�a�4�D�f��q��'��[rV�o�k��u͖2�7���\g��QV�ke��>+��h)�'�[�!`�~�NѳPđ;$��G�46���oN"N0i2>H{׼(�!g��6dʗ�,e�<�����RT��Ơ)�*{��Թ�^�5e��Ǿ߻���}Au ��Q͑��G\?M:	\K:'�ā��^C�#���R�,��<g���Υs�B�TG2��p\��ҡ����M�GI�M�i`X���n�Y=�2N�t�!�|��+Tqm����2�l��%_QY�e�f�D������G��~�v������#C�z�^]n)\}��N���K�0����ő*��`�FTZx�t���9�+#~$HC���B�طů�q�)�[h�%��J-���yDՁ#V��5+���r6�3���*>*��wmL�4�]��݇>��؋m6k'�9r���~>y���K��ϫ�A98Q�M]d�a�:#O�#zK�'�;;��L���!E�l�+�n�^Z�On=���� �Q2������D,���͂��g�a�	���6C]�p�?S�w��{c�*kz��s�B)ee����#���'��̀��{^+t�5��	�����-�����cv�v��.�	z��Y!�k��h�x�1�%;��*����������=��NA�*W`��O1�q�d���ȖD-�L{�X�|��r��:3Od��%�]�����Tdͧ6D-����G���hޗ�N@?���xIEuq�.>ֻ�
a�Ѧ��	�g!}�V��J�+�ڋQ[Cp f�L�}���<s)��8�;��ϲ�0p#d���� �g���K+� ���;,�wHb�={.�؍�����Ĩ����q�G�z�8dG��+�,�^�!FC�d��LF[�l&D������w7t�~��mT�`�4c7�U=���\a�qh�q0y͊� �0W���@j&�r˹���HA����0��cb1��q`a��Ͱ�]{9V�X�l܆y 04�ؤ��E=z2����uwJQ�4+���%?��=rb	=���*L=@�����jiP�T�A]�f&I34�ҿ)���CSi٩�{�����'��#X�mcQ�88<���QO;eچ�b�C�m�Z�F\�i+�=hW�B�Om�j��x�))�>Z^��5�>�3���\���QK<��WZ,��[d�'�w)���\m�
�M�>�b9����ܗ�1c ���27O��ȕ�6"GiO�з�K�8���v�9�Y�,��ˍR-���ƶ�W�.�M�n��,;R�͈y���JəU�դ�)��Hȝ�����8T����,�~��� �r`ۂ:���\��p5����+ls�����;s�=>Ih�����D�s��p.����%�z�a�X|�D�^C0j�Q�s�t����f�~�D����Pe�J���<kiZ��;t	_�w�Y�,��c��0oj
�m�"#ǧ�`�^����$4��'�r�ss'�<�Y)��r�=_5�*��<]W���Lc��	�[8�G�Om����z2Σ�8ο�X%�      �   �  x���Kn#1�ͻ$�D��w�&0��O`2��#��V޸ДX�b;�я����q��s{����}�z�^���������??���ͺ��n��; �B5�j�����&����7���N~�������8Q]��gH�Z��W�)��^ǉdH�u����3��F���V2�ն�a�S�u������<�Mzv���� =c���� �o!�:ϙ�_�!�y�`����XW�D�Wsg����(�4�g���滯��B��]�~D��KAĈa�r���f�"uOh2#"rtOb�ʫy?�*ow�Ui���"�OgAĈi������%Ė�OO�d)I�1B_��Hs�F�̋���v�ۓ�	�ۓ�	��s���6�=�)r�,O�;!��Y�fy�u	�W~k��l���	�u]�&��\Y��(L~k��,O�:Y�V���5
b������lW�b�����do��{s�vѓm��;!�|J՞;��RQs����~ ��;�      ~      x������ � �      t      x��]{o�8������v�1Iv�1;w�'�ɭ�	���$h���Z-��a�4p_c��}�#)�YT��ۉ�ٍ[$�%��WE��z�7O��M�<�PVMfQ]���>�uU8W�����q��p6�%*��k��C��pX����E9���et���*j�?<�i�
�I��"��O愉S�/�����,��+�R��9.�*�f�����N�Ӽ�^����	aj<<<=.5TEITE�9���!JpE�%�).�_�4:C)i�:B������X�k}+z��+��2.�+)!�i�i�6L�W��Z_��֗ˣN=��4�szuȨF<�O*K>>?��.�Ԉ����|��/YA
�!�ͣ��΋��(�I�x�"�!ڼ�/Qq�έ��`7aoqAH5���v�n���%�pyW�
Իע��5�AC�����l̡ix @��;�9>���`�=�<��y|�@]|���YE;1
t�
�G�EM,1�v�N��$���@Q���
b�H��1�ҥ,�䃌�<���Av«N~9��s����\C�#u���+UF^��3�P������%��ǯ���n\ɜ��}Y�����U�Z��N[$�&�p�Y+�!`�`*.�C�t��A�Li+/UM�����X��g�Dq�������M��9*f�,I��W%���Q\5]�~>Tp+N>���C�ҶAP�ᰬ��C,��.xT���KND�°�~�J��)�0�M�Pm�0(��~�a�Rh��E����z7͵��R�-����"�7E4��6��Ĩ"/k8���&捾�m�
!�]�4����Y�6WN��X9	�T����>�g�Pތ�]ъ��Ԥ��ڮ�`�&A��pK�<M�UЊ��� ��4Ѓ�M��8��������P���<������V�Z��&�,�ナ.7m�&z��f�ޙ*g����.X�Ö�1*��xE.
�Y�+��gw���L���{ ]������4ҥ�k	��e	�6�q=O�(@W����;a":�YD7�ߣ/��ZU:�3�� P����(�Έ)�!L^㤚B,��
�`PPao�����_��.���"[�bU���/�$�E�[bM���_��N�!!k�ˎ��e��0��Ꭰ�:�`�8Ǡ�;9�h�H���&ܧ�xt����������zE>� �
���c����C A|>'�AicXU�s��~j�� �����MW".eh5G�ZEQ��
�0�NPx��3t�3�э��9Þ�,9,\�E
6�@�AI�o)6�����l���(��X�ie��m'l�|.�#���2������q�� �961eR�S4����Z��8OSĎ�N����&s�<g�9��9y��z9SQ4�Ө��0aE�:%l��K2�7'Nd���Y�s|#��p�����o�uX:$g5N�"�|����U�����=�!b�~C�JʎQvA�3���2W�?j\��^.sZ �F��[�1S��?K6�!$$�ӑub�6���s�����}�'1�Qv�>�!&}W�(Q¬�)4UT\�jh�jؠ�;��]�� � ���q��Ì�|���'��\l�"��+��{�Ҽ�W�/)O�5v�M��%��`k�y΄��d�CQE�"y����Ġ��Pp�`%�Вj�r _p�%��PQH\��Y�����#S�uH�k����t�C	o�XZ����?A��<F����ٴU�������4Eϴ삾�!��~ E���ɉ�	���A���kO˞�Y��/-c��<�'��	����֢���qg9��HKgh�3�7���v��F�߆?�� �����'�٤apa�m�ա<��Yq��"w��M���f�6��Y����m�����K
ۗ���u�S�-����Y@�'� jA��w|����>�3�D��Ž8��>e+T9@HZ�ɺ�o�ʳh>�,�tCN���3W��vn��{�qw���o�ᨇ�{G���9Z�(yow	��;	I�"r'���U��p��fC�d'Ce���:9K�nEuV_�i�/&�$$`Y=C�m��e��(9ȳ���y��M6=,_�OEjaemc�z��;l�o�{(�䎡ds{��a�Q�Ķ�2ym�U
��!i-�5�R�Yfh�hb*�+y�;�'a�dr���ZUX��īc�>^�)F��������y�޸�4V"_e��DF���(Ƴ(nΓ>���L�{[==b�^�ą�9e��������b>�������ΰ���B��҄�I�kz_����Do'z;n'6w�9�x�d�����!����6�u<�%�q�j��C�\Q��v,�A�0)���0K��g)��#�|��+�bh}��=�"�gSx�6p�<����@��q�t�0ס׳г��WΗ~����2��4t~���>i��=�9�WFK���y{:����	v$��y��u�pDfa����QK`}ov�Mc�hϰ��lSڵז�f����	I���~ʸv}+4����H�'h��*hdW�q�C�ܭ�a���r�1�c.�ݐ;7FcI,�69�x�CoJw��MM)����h]=t���:���K0���&%�$#�]%#-�� sC����ټT�����N ���uV��^l!��ÔV���MSv8��W����RChD���:�B4/�J� X��8I�_mb��1�(���⣳�����������^d{�d�)3#�x<�5�4"<dhd����ThӉl�qc�a��Y�
���Hk��Y��Ok��@���^py�ϱ�Bzp<�hD}D�����{Rg([��lN�`�>|��ļ7B³��^U��3m��aC�y�? c4� nz��V�Fƻ��ps�'9j?MΖMaJH@�,^�WV��!����O*L8���mv�t^�G�
��Ї\[����j,����q7Azt�.�G���S{L��n�r9Z֞�ܿbN������
ڜ���N�9�o����r�j∎�Vt�h�V�a4��lM嵻A߂��%�BΪ��c#uj�/�3���¨�g75��}��1���u�e� {>�! �c�	�����r'?�<5����M���4��V�̊]�;���0�t���ר�A�|+ݑZ�dV��d^cxQ/�*�~��45r:��؂]�,�m}�DF�q&ʟIm]oPVk�L�
}������̪bM�g/ƈ Je���;�-to�{��G��ts�K�r����t�K>Ҽ/��ޗ9ȫx_�b��8;T3S���ػ�\G��ҴC-����Ug�hȉ\	f�����6������_�����]nil��,�|�Y9�!����)� �q��{KV�G�ʤ�t���ٖ~_E@!x�#VSmioI!t-�

�x�މ}gD�-��8�N�_�VZ {��۹;��A��9m� ����3oK-�{�,�8C��U�����U.}��P&��)ħZ�;v0ἤ1w�\�Uþ憉���� S}Rx又X-���í��(I띁���ǧ�ŧ͝]l�;#��r6���s��y�;����
�pB�6��jSwU��Sm޷��|�u0X��1͢/�{�����g����d�#S�ͱݴ�v�0��m~o�{���c-�؂I6%*�*�x�m6t���n�{9�>�ާ�߃������A&Ro))YJ���C.������d%�hD<�ͳ:�ԁ��k��'%�
������Sv���GT�q�
���p�ń�i^Tl֡�7�i����7�2�0�A	��ЖLO�fk�:B������|$y�'&I*���d�:1��͍,��̦JI���N��P����>϶w��0�}��k�{��#Y����,W�|���a��Av«N~9��@t��M�LC�#Ղ}�:�9�6�qH.�dh%^@~����Ls	�����6B=~, ��*"�b�+kEM�����"*�z��W��e�j��,���1�0�&�sfv��-�"} ��g�
��.�E�����B�lm5�!|��l&_�{�ϡ�~#���[Q�	�hԃ�.�pU7Bl45�AF�_�1�n�N�'�8Bw[8F� >	  �ԍ��Y�(3G���ѩ���]�a3��u�����w����y� ��+�x%����BA[����v7��0֕��>5�)m��g�h�^� /�rߕ�����Ȼ�yv']yu'��uff���V��&����/�S�	�}9� �μG����޷ia�2���N�����^C��W����y���Y�����[6����k(d!����B�k,�~ �Yqe�o�<&�}���a��!q���#Q���b���Ee1wjU��q��t8fS��+����y��X��De>k����?���f�2""�U�7a3=��K����h�Fu5}�=���QL�dEL7>����g��9��<�laDT9(����Ɛhr�ظ����L�
+�ݴY�3���Y[�M��zfm�����g��������ja�gI~]�Ɖ$�efD�D͘��qU�M�Qc%x#� ;�+���ͬ�3Ug��d3�O�Eξ�G_��M��.W��j��ӱ��KF�TXy���u�t�5YKqF�8k�BVY��
䤘��Bb�ɲ{�8���`_Pg;���"����Y�So���݌��Q�ϼ�[&��d���8]j
�pK��W�1[��{k� �n'��F���,�"�.]{Ǌu�#GH�>Rq���p�L�JBF�01�b�.���q��<���蛶<b���G���IGVU���M����"g0�=�C4B|�f�=xe(�cK|���@���?i�9�|���<h"��.���v�@�`�h\Dsʆ?�����K�4�Ľ�y��(d�р����AtF�?V�O?=����SF�#4^��I������\Ӛ�!Gـ&i��y��Ą](L�|�F��g̩�?��o����?�]i��߿��������4�.�}6�G}��u���r��)�5��6��0��:�c�̱7g3v�d8/�����Й�FW��9'׌:�w�x4x���LV���r@ނ��+�VȯGMcv�l�����}�l�{�׼(���%t3�]J!F�aR���W��L@Ē��z��i
5#\�����X)4��)�t!5���I���-�c7�Un�)�]n���:�nu�̿�W1O��w��f{���c5�,���@k^5�r�ꮠ�a�告�f=ZZ|r�d��>T)����v)��,�B	<�-�y{�XJ���)(�l.�XGvg.��k��f����.�/���ȷ%�ʭ���݄�G��3ڠ������5���<1� C��\K������m*1D�8����>��s q{�-ѧ��m�0'|�Ϩ�=d�5%� � �
���r�6�D\�CP8t)���T�$��%�j���9�ed.�FP��c�+���l�}wuú�-�̄Ag�����y��>�f7Ï��Y} ��<�e�q�$��]�[����JS��r�7�;�=;ΰs�����.�2d:VpNQfs�.�Ά����=�i�᎑���"�j�����}������`!�^�l�Z��nѡP kOĸ����+[���k��K�Z�� ӊ/��P�;�ƭd�!���v6P���9���w��bv���fN�*+�$f�ScP�\$MђN2��ռya���n�����_������>��r�8�~A����!��x�����2����R�X� !�o� g����	��KX�\�Ҳ_P�J��p*�*���J�>ד����oOBG���)���
v��|���s�a����e	J��z����7F4���][�.�fI���Z_B~5���Ė�b@�����+�&4(��H�g�Fo�x'���syg��,��Q���/�ָm�\��w]���,�$m�T�no_�~�s�˜����W���Mg������w�?΅KA�t����5�o�[�ް+���eK��Ʋa�Wl�C��?l	S9�&F��pj� �c?���g��>#|'�����j�O�X��gf��\_׻��RR+�����w�K{5�E]M�i���.��{zV�ߛ�Q։EPă�;��a�۶�K�DW��[XKo}o?�2���9�t
X��
n�)���ᒞhɀ{sK�!�N<nN|�x�Ov�d�nHK���ADa7!�z�=�����薤������ҷt�a���#pgFF c�N3Z�t�K�aF�V��0�ǔ���Y�^0�Ƭ��a�컘{���=���|\�z�ߡ������?�F�72���m����O�n�Y%�Ť���Z�w�����.g�6{W-��������7Swe9��xf�h�e���o��>^�!)wϹs�"��7��s'�^�n5���m����?��4��_����aЍ��9G�F<�?i�      r   �	  x��]˒�6]3_��zB�4���Q�*T6!��R�mu���쁁��#��v�-�jz�!��C::��ٯ^<��%x����݋qD�O$)�'H$��$Ih�ޥG�|����v�#�����|�QܒFY+�?��}N"'�$��E�#����M�S�CJ	��a�y7q��^̒��_2K�R�^��������|PxK�k��ix�mRz.mL�SR+H�פ�,�����(W ���(gq��j�7/�SCA	�/d{`��i`4�`��<����V�Y�xk�weO�)������2��("�#�������bHb'$@�{D������Z_�Q�(=#�Z_����1e��Ɏp�$�X�_)2���ok)EU�#!I�:����_�|���sڼig�6�Odk@�H���G��ɞM(�d��M�
����^��H�}�� �ȉO3T{7��!1!J�?�mnh���	�i�|�t�R�eފ1I>/�I��Į`<�+8�Z2�Q.��1��:�~��A"LCШ����x ��9�F�&��[�9��lR��AxmT�,?�k��X
^kن̿I�J�(
q�O��.�X�YHF����fQ�0�D(��D(8��$:��, ��sz���:�]3ɖ��y�3@��bʄەd�v5m�$_M��7EB�Ra�'B �M=G�k&�̣�Oʄ^�6E�
�@��s��UY.L�Űl�۵p\����$�c���L��T���{>`q��` EvP��!?�a.�a����rc��Į%���W��h��\�H�%�c����5�c��u�B���ge�ʹYS��M�.�<M�Q�����c�5�_z�>�.�́'bLѠ�u�L���j��🣫����>t�U����@�YLKn��m|8Vu��䄑#��WV5{8X�"`Vuǂ�v���2�
O��,��l��ʉ�R�iZ'v]�]s�͖��aH���椐r�=�c*�j��^m	��S	��Fw[����ДQ�b�HV �i��&Y�y�η�׭�C;ٮ(߽e��q�#��6����f�3*�\G���F,ꛋ~
��F=W��'�"L�q���"�D�����2�V�M��=�����j	��	�
t�vQ�����F��HĂtp���F����=�aD��Ն���!���L��I����J�pyu�i�IYJ���a�|��Ez�H������x�v�[$w��)�!�vl٦���H-��+ �V�>����jc���p�j� +
 �q��"��M(�e�A[��`�ah@�pw�A�gñ�����I8��8�;�DGgdS/�4�v���ܴ1��R,���2��-��e����|�t���"I�O�������Bv)O�#����΋&�q�TZ���?6l�i*�ߞ�ߓ9'Pj���QR$�C���	d�C��R/��Ʒ��a.$�uD���MuԷRz^�<��h��|����_e�ktf�u��y���uD�'f�:��Ζ�&���ks�o�~������c�뱒i�3}F�ï� �S��1��C󷒊'&A�)�]��%��ܭ���(��Z"��م�Y�k��Sj�0'a>��?F�gn��tCVh
b�-���}��=Yi����W;Z�_C�Q�^�g��� ��o�i�`�9ǰU�V�j�꼒7Nۊ�.7�gO2�]��ӂ����z`�o�r,��(;d�kI%:�#<LQ�QyZ>�+(/x�d�Se|f��y ��.1[��@��V�^�vĴ���뾰1���wj7A_w�-=?Y�u�z�UW@FbVo��a������v�>�/��f^}�m��[�0���ZhK}�i>Ԟ��%W�'�WUN1ju��F�J�V��/d!��ui�\T:��T���CJ}%;��(4�:@��zHZj���畅�T;����8�y?�����#��g[�f�v�m��U�s�Y�c�g�S�lܠ�̲�r�YVG�n�U	�ʲ��@�.�rY��,k���WU%��hsŰ=�Б��Q�.�;�q$sf$Ӽv;A*���$ҧL�42�Hb����l�F�#G�K��id�<P�;��ʍ<��7�lJ�5v�dzk{ha�����P� ����VQ1�����V`}�K@��nu���y���G�̀�\��h��k�	�,�������C�A���n*Yѱ�*��-w�nK��Cyz{���R9ݳ8u��٠����rRp� �i��0��:u���,rl7 �L���Gu���pB���8�����`����V��8;
�F��v����C�u�W�V�,͚�>������-d!���S�E?�x���l~������_�_�l~��~�|����kB^��6���flv��}l��n		0��������m�6�      p      x������ � �      v      x������ � �      �      x��}�r�V��o�)`Ω��P�x�%����8�g�89���
A��  Űg�j^��;���I���e��tz�U3ݩD$�}]{]����䋸Lg�wqu�]'E\�yV�|��dp1��gË���fп�zW�+|?8����Q���?��{ϯ����/��t��ʹ*�|�2}LK�+���w�e�������,���1.gE���m^<D��6����YΣ��u2�>d��d�!E�D���<�����3����;ѐ���y4�����!{�%Q����$Z�e��Պ�_�e?$e�ȋh���eUy���?�_��:*�"���h��Re��4)�^4M�X��t�馊&�QK����i2�7%�X��m���S��&�jǯ}Tnf�QL/�bR��%�p?&x���֓���;j�>�"j|ѳ6�4+�$�c�:���4:Z�>�珴ʫ�uI����e�&�X��V�2�����(�tt�E�/�8�����ä4&��ϛ�DM]�.��LIo2Z�u�<�����IY�|�	��5�曊ws�.I�d���\mZ�ɋ�5��Ť1����+?��$�֬�$zXǼY+��[�Ǵ�ы�"^�Ʉ���SUl���l�4�"�"�*Y%YE�X$X�2����j;A�����ls;��+lX�ও%f4֕�	�N��J�4f��xi�@hD��c��Ыh]������}E$�����=u��O�Ϣ��E<p���2�{��g�<�,6�#�z�5D��I�٧���q��.�=��Z������j]��F=��nT�Qc�'9��~t�jj�@�Y^jy�/�oܰ^9Ȼ<�d���!�=��*/�LΓuuߍf���!2�\�Dm�6������'Z���bZŤ�7Ō�,�G����U�J�ѫ�<UW7����yoxq�<VW�O��[��g�]
�&.�`& �-(��PD�t�)Q�Ǉ�?�A�x��U���M�,��u�yٙ$�>/����uZ����x2!N��_�Q����Hi���^�>HL>J�`����dQEx��3 LM���E���eZ��ry���-z�	c���0�3�^2��q�v�b�_�����W��{��_��f�̪���ŷ��Ov��GЉf�%����5�W�?Г�҃���K<��$pd�O/�R�L�{%��Ǵ����Ѡ77����..FL,�XfY��8+�YZ�8���wI/z�G��_x&}���%�*bР-c�"n�J}uF"���\ŭ
�e� �%��ٗ��3�eREӂ�n����W%�+�?ų��tɧ�E��=������Y��73�=)
b�-�n*�a�,R�C-���	M�%��v�襖����\�-�-[bB�W�!I֠�UJ+X$wt8A��]�������.��߳��HLh&όg��@�3)��l@���C��9�U�'�t.�0����S��W�ݺ���{�b��9�Dib)����v�lt����BS3ZJZ;"�x6�7֌�_nȾ���q;MSZR������4��qM��C�t��&F�&ٚ�{GN�i��u�߁��D�3���9���������G���8�O��՘�	4���3k�11^�;��0�b=������T2��.�֊t����Ȋ���2+�`�HM!��'m���O�DVo���3b�,j|B���<��GK�<͸���p������l��=�}��y���:/H�U�B�"��A����W+��ؖʢ-D~֮xY1�2�.�H���.�����wn���R�YӤe,
�x?J�(��6�9��"a�a�kl!"ي�ću^���ݤKoP����RY�xVЃ��K�egr&б2�S�t��"CI��^?�� �����:t[����!���s!��s�[b����y,+��7_��j0V4xg����M�5�S�dd;-A5D2���z"c�Ew���}�V��	1`IɈ����� I3�LA�3a�AR����Hn����4���w5���:Q9��p
�[wv;JK>K��0��#�ߊdI*>��h,+gM#�@�b���(�ڢ���Ҥl���ؐx�xL�^�,N<�5����#��s�&�@�/��A��;����B3Ơ��g��[�k�8!0�RU
�wI�-���,&����lOqD�[��DF�lu�9;�>��ub���đo)�P�'e	>��%j4�!(�Б�[H�t�`_l�v:�5d��X��3��@�Ly6�� ��#�|�����6��1��*���YEG]ϓr �q������;�$�U���bb=�FO���a�ߞ�cEj���۔��h��=DSw���$��pNf���64g��p�1�Siy7kZ��U�)-�B	e;UZ)�2��Uech��f̜��M��RU$�V�V����E�,i^�F��yLD	�W�d����,�P0�
5��䥒yAMz�$1}�+���d��%2�!_�I�Pz�%,�Y��
g��m�0������<c����V��H2x���B]Z�Ǆ�Kv#��9�Se������%�q��͋�q�T���ޗq��H��+����b5e��#W�Z���ug�ˏ	++����� �M��CqSɟ1���22n�&�s�W�TP�: ���7w�"V@p9�fP0��Fz^�. �{u�����"(x*��'�<�6֩�I�`�J�N���Mg����е�0�yU%7�����S	i2���QM/�'���"0�-�Y/���:`&�\��)Ͳ�a���6D��Y�sVg�'=�z�X��#���}��u�,�#�ư�6U�: ��Y���e�"��GMz�~�V�5p��/�5�������q�MV�HN+$����5���%fA�\��6M:���/�\�X��Dp�Q%��c���ɗ�tsǽ�ܘ������75}�ML����Ϸ]H�6�5�u�D�^j�`��{�p�a��F��9�C��ŕ�A�$b�ߔt��HQ!a��*M�l���FdK#e�1��őڱ�HR��=�,X���0�`����'���>ٳ4���	C�퇳�t��s�,6�鈔�e����_I�OM�y���A��M��p��s�g���~�[��ERm�,j��������x����ُ̤�a��9}�}����E�.K��W������W]��?�����N�8���BU��B��{!�e~�qc�����|�Bo�ǖ�٧n3Y~ bË��ևMF����{���N�Q,>����-o,3:i��T-
�y��H{��.-�H�#1'M�w��mj��H�~Q�ީx	�g'F/�?-ˍ0g��J'���K%���;� sF��x
�A*3�x|-�SWnv��$�X��$�H��@�8��`���1]��"\�`�NO�g���~V֎ ��=n�����<��tS�������r`�*�wÌ&!�1���D����
�f&���5j��?��+���P�Q�WZTۤ��M~����ܝ85�ǝئH@��*���fI
�&�	��E��⸫����B��:]���5�$���4�����C@�b1���%�`Ix\yz04�^��:�sP�3�Ǭ�B�?�+������4Y���f;��7@fN��Pi�^h�ػQ��V�P�mk��?���6C]����D܌���MJ Hs�F&�C��!� �J L��;�C)�6Ӕ�O!.���(�!�38��|z�����aP��Q��~��D�zY��fJG�����s6��&�@�l�16N���,%��S9���c����|�X��P�9!�ܸ�tl������ܡ�	m��X1�d�~�{��W��@y4𠻧����)�f<�����	;��NW��U�&����7ǲ�|��9�_������8� �Ł0Q�f|���M�hD?Q;��X���rm�#^x~�,t6�4lP�l֎�J��N�T&���-A���Ŋv%�}.�\:��
�g�9������yt=� [3,�*��$�/����j���̋h0��o�z3������4h�ڏ�E.���p�UR���B�v�F}�l��[P�͝�ĔA
a�& 2�"�c�TD�7�
�^X�0��ls�N��h,����(,�    -��^��)���#��n5e͘����}�������0��{O�_}�����Btȯ�U�|��O���7����`����ep}3����~��\4y�W _�s�Rj��=݋���e(��.*��a��i��+=��$~���%q�f��'J�J��?���-Q��V�?���	C����f|�\��"���M����7�K��k����u�� h�G���x��a�vs���?�]iG$�ؽ���da&��b, bQ���=SIK�۲�k��i���]9�@;�mҀo؄�|bw������I�A�ą���;��18���y���_�o4 �T�\��/H\&��X������ygr H$o�0�L&1�zx��Ə��E� �*7%����W<�Q�Bj��:	��:�zsc����W���u*�Q�����y��	Ǵ������SSv*s� ���,ΒL4u5��隕��T�Y�؇M ��FB_!w��
�x��B�L�ˮ�Mi��>m������D� ����:�����ءތ/{⸍CG�Ƞ��Z�^_��%p,���5\�2�c�0rH�z�Mu��&�7u�P<8�F�@�?�Ѩ�
&du����}�'�e,P�ڪ���X��@Z���~�Z�IhH����e`ۃ�k��k%�s���*Ra/��!�{M�D_s�Y	�X����D��Gp�$=q�����<[�X{�ƺ�+��p���t�{� �h������O�K�y�T�zqu��F�~�@I�\�.���.R��Q�,Z����$�j��>�w8n)�Ag8&�o�C\����~z_U����|������,2�~��h�|W����Ha.��s�տS8��]�����Y�(�S�[j2�Aی:�e<���t(�.��錃99�aj&rT��,i4� U��t����O�ǔ	�\�@�O킉ڃ�����%�>Cxo]YP���L6"νD`Q6gb�l�������������LiW��M�������h/MKC:7���L�@։���r�3k���. � �V�Q"ʀX8�g��Pp>}��Lͭ��zW$I��bO�����Οx�}�4+����P[�Tk��[�b:�p�y�8rv��+��e������Ԓt�щ����3��X����<��^��2%�l=�4�~��|_�l�6_�����5��*����>m�ps�K������){j�f�ϒ�@£��dN��N�Hg�.�o�4}�.Cp"�(xB����SB�B�ѭDsvk���

XZ�a�4�:&&:6T33ٿ�E��V��=6	{��d�g"���PL}[��W�@vT��%q����*���SN��]� �عK�8C�
C���V~r�0i7l��kf�R/8�����U��1��m��y��w���,��	������ѱڃ�9H��aO�_��t�A����1#2$�����2ʢ|��q%q7��%x^\�M:��śvbO��n�Y	�}B����
���*�A��q��yq���)>)�)����Ab��+��	7|ǭ)��𭱸9Y�٨ޣ)sz���pa��Z��N���;b��z\���:�
A|TH4��¢����8����'?p�,9�ӌȮ�M�w|����E���4�g��LE�T�`�� ��x����3`(���M�d�SI,6/X`,����~�@��Z�5����֚'�V���9����p.�QP ����$Y
���k�zw��!]���5ȤY�y�<��hލ����Qy�^=5f�r��To.)߬Q۴Zv��s5�<����,���c�q:x~B����2��w��`6�F��D��j�p��T��iCX�Uf��U��4C�Ҋ���$1z�;���M�v�3` �3=�#́��b�%5��7�^� �`�~0�t����}�gᏂ���Ηwd���L���B1ի��(d�2�8NK'�r�����cI�UO��9���*^2�I'K�7$a����%�\a&�ά�e9�!�O)�弄/kǟ(s/��E���M�E�=`�.>��!�=ЇQ�מ_��:Nn|E?���3����ѓӄ��E��;��ɼS'Ơ+����?��5��a8^���S7OO��bt3�u����F�{��*�o�9��da'��mrp� ����X��U�6ILi#��DH ��+V���shi|u]0�;V:�.||  �����-�A��`X�ąsȡz��n/��4�w��� �Ú��ۛ���ɏD]�F[�Rb��^���Qo8�l�����`��r�E;q>]�@q��� *-yW�YQ�?��.�1�eC�����[�%�"}i���2� ����mT֐��Pi�� ��M�ks�����a&m�� ����,J�l�C��+>����{�B�O��Z�NG�ݝ�;���얙h�����y�a)ok��|����}��5$!��fe�$���}�� �h�9�*�5�jkj�;��@F�����{��h�-��Ȧ\��8y�d$:F��7� V����˵B��H�`�M��;&��k�me��7��������/zח�b��k�Ë�[)^aȇ��;���Űyr�7�~O�x�uI3����x11����ZB��/����-�Ԯ�3�	���x1��	n����H!JT_���+�),7�7����Et�C��7��ע�JȆ}�HxFj!�+�m>����`�V���b�g,�utJ.�"̱�� v՛�@|�����^ƙ�����
Z}O�g��S��g�T���Y���v�	�/��N��4v�I}{t/��:�PO���uݛ3��l�40!�xZ���܍�-0�*H��T1dY\|,䖔�1���5,�&���:Ed������Brδ�Wy�7�/8�O�[ ޙ@��s��5)u�? �_!?�r p�?��&�TP��=��0v��>�V�������T�Q?�q�5A��6C�Mh"Z+�� �H��z3�^��S"䪂��)zh0tO���5��U��H	���ߜu,�-!aFK���H�����V
o����'\�� �#��9{������/��#���ȓ�B�R�%�ݴ.�7�֨���T(��BJ+�'�iH2˝o18��A�gŏ�I YíQY�:��t�|��j7�6�f�7�D5U�F�i+�Z���Y,Z��3rM;v����Jf1�$�Q�O���;��I]�keR<:lG����،�yG§5�L�o�b�R��S���x�7i�/O��MϽ����*��ݺ�MH�-�j��q~xW8;oDЂ�-5�V��g���fHB�b�Z�f���l�բh����k��a�N�ib���N���ᥜ�ZDt���a��ǽ���G
d�7H�YJ�sg�N���R4�����OK�e=���oa�?��X���O�Yq�D!1;�=O�Z|�����ano�N�Y�@J
d2(�if�M�,k��b���a�;r��i���V�O�+��e䑫�t��\қ��V�D�0���K��o�#������͇�������б��K�,R�OY7�Lb3S����@5X�	K�}Ц�ph"��9�,������h����|t���ϗ��u���BW.-�W1l��KN��:�Ղ�sS�l��V
�`�T��;P���'����(���)����g�^�\Ij��Z�c⼔��X+��
�s���re3{�d�B=����{���V T�	�%x�� �V(�r�QB�n}'0n���%�*��	��	���U���� ~|�����|���Y�������iT���#��B �
Z%k�%��l�:'i�����!#���ʧI"���3R�z}�9���xvvf˩�����'�'���s��N��)����e�LMȑ
T�A&g)5�r��Qǈ��6��}�o9άƤB,`!gc!hV#8G�I��*��AIy�Zͭ�_tF���z:<�LH�ҽ.�աb�#����{�XIn�{}��"�H{�zLV��;0Y�(    ���a_�r/۔]
���`��X�xX�~����<����(�%j]�0���c0��2Y���D��y�_�7B���'S^RV�+���OR	J�}����ݦ�MZ�C/z�,=�BKg��5��QX_�Gaw�$�E�#0���D����Դ2z���' ��DA�c*�ű�A��� �<���I�y�����ڪʅ`�Z��[�����gx ����.]\�m��}�=�w+�6tF�fd�V�gX���pb�к�
/��H����".XǶ����¥`�މ�ؚG�����Q���PU�H�pY�e�U������p� ��*�3�3����y���t{>�g�9��9L�[&���q��2��˟�N��,�oy��e����w/k4�=������|˛~�1�ʐq��Y͛7�Y��F�捸س �T�����:tJ��Bt���d\���ڀ\��{5!-�,�z.M��K�(�H�MV-��f�>"��"���p�HY=^�┅񜂎�3��i�/7��<wM;%iW� �z�Fh&�����W�q�-�4t�9��!�v���#��58��!Z�OŴQ�ZT�z���D,�4-�F˾�����B�T�����##�����v%i\���
�`��lud�i嶾Vh�˞߭�?D:K�jj�&S�v�����p��PP-KKW�UE�ƍ�ʙ��id(�
Q��L�q�bx������0"�@�Ո�q�cƕ%s]�I���cL|gМV���3'G$F�%�����p�|t}yyN�yV�g��?�q&�,�μ<�ߜ�.N^YN��t6�Ȝ�R�uxٻ�l����3���L&�@��>�f�&>z��}�O����.yڿ~��٪���>i���U��1�J`S��3_szgk�ޞ���Z��pR���׼>P��ɳ�+�"�o��vݘ��~�+f�S��4V������BAN=Lw5��U�?�2�=�e��It[)�S4xf
��I]�#%D��4�C�9x!~��$(Yd�&>u>���Ӓ
��i��4)���,O$ȏO&pjH%�Z`((K�Z&�Z��Ն�f�\"����!^R~3'�O�s~��"�Pd��$A����\�z���J�a�9؜S���<�h7��\"\��1<���V�C,P7,S��JT<�7�~��7OZ ��cǟ�w�����m�fD�w�Եݨc�D� ����K�uJ�A)�+h")��X�s���X�)H� Ml'�6f����B@�$[�U,q�D��:HpL���
�F��Y!)�"\�6<�jk��3V�zER�!`]��ag�5ڶ�;����]�|BWC��	�����ɪ�R��k��£)y�҂��0��������#�ND.G������ft�\�M(��(ǎ�`�l���L1a�`{�Ug����h�Ƭn؛�
�Z�<�Z�-����h�V�~��WI��s�x"Z����#�t��^�)V��>����g�	��@�s#Z$��lϺ���l��Ɋ����]Y'��G�=����]㋪w���r!F�,�Ք-E��cn,Ŵx({��Ԯi|R��x?�Y�uC������f����5���O��YT���0��γc�v:�q����uo4���A��|zu�*_M�L���@�~�����xػ�j�13��׿Z�����e����I���^ZF�䓉n�d�C�1�n�꠰�����{O]n��%����T�a���\�9f�,�
�������kd��k{9A�zK����������h��b9TL)�]�z�MF��w��N��e	�\��ok�N8��A���W��3d5��::Q&���\uu�k4}O�w��9�d�͸ZZ�u��~����4q��U�U�����Q�7w;��n+,�Wl�ߟ�
_�\%^�厦��/�וJ����|�?�NZ���U��P<�{�Ԍ;�&���7�`���hvѳz��h�g�O���v6��sh�\���)�+���0隷�̱@_H۱�^�_�����!�Ŀ�u�\5��(�U���8Ybu����Z	r�tҎ����k��1]+��%��z���l5�Xl�&vC��M.�W�ɣ�7�8�p����X�a�hn�����P��������R�[r�4l��^�7�&a/=�Q�3� D�H�~Wؓ÷hQop�>�~ӛF��Ξ�V�iGɋ�f�黗_���~��6�����9��!#:Ӻ�ey�lN;[+��l�%=$�#xy([��$�����:��������{��^��|7Y��	o\ٸ�M��6�d�~x���h���,S`\R .|q�KV��Mi����$�4N�:@�:��qpM>�kcW~W�T�7v�Kl����ൡ���yp�zS����+\ߦ���9��mAe?��V�j�N�}�:��9U��������v9��ID���;�sb|�-i��	�sJ���^��ph��sy���"1Fˡ�`�j�l�z�I�\dJ�C4��P��d"0<-��f���{����Ɋ]^�o�Ƭz��V����201V�����e�%��/�(�ԧ9�a�������ߨ�6��{��2e}`Ю/YB|��?�ߗ�Y]�TW�����`�z𼙘f�z���w�������FCT�/]ƽ���������O�Няq5[�i\�,{K�L6��b����́���u���0L�/pN��p�Z�����Ը�ʻz�y�`ހ�O,a���*�e�Q\)��sD���Mw�!�*�55���4ӫw޶tnDf��%���ްV�n�Ө������Qt�:W��:����"Ǯ�\j�Z1Q�>�ߤV����74luE��\3zu�-�(��f)���xfa���dک����Ս���uH�zKl��W��"���F�y`0�鎕�6Ҳ�a�K��g��Ȗ������ҐJ�V%~��"%�?������,Y�̈��r8z㏠��\P�M;�V��C��Af��pvS�ЎCϓ\B�)���y����:qqI�\� �����x\�g�J�gИ���i�� �G�N�~1�����rϡ���v���O���?~nFX����v�i�D�I�`D��ߙ���]��d��.���|Kv�qKwJ���4cޠcU��Q�f�e�CL�&<&�NG����7�"�'kF;�,�h���np����$<O>s�$wa�A�W��f����+�.����0i8r�.3�K�����S������Z�V�g//N'�T��V����%��Ջ��2�`��5�(�<F�����e��e�#/��Y!xx����c���*��Z����{�ǌk��-�jRl�	
J;i�B�*ȓK]B�sT�4q;�ڝѽcS;\����t��od����f}�1`�����2�s��y�FX�؋�/��Q\C����*~Yc��s<��@�]���O�b��������4��b����hv:3���v��R��I��"��,�ت�Q̹X��'�1w�u�͹��!j���Z�F�U�a�D�C���]����/�E�|�T�ږ9{k��kskh���vɹ�b�y�ƵV�u{���'ѝ4V!Q_W�W��&�z>/\�9Q]��T��0yi()9��,��z�_]:��z��
��ݶK�fD���[�;�I�\E��e!�����*Ԃ�g�yf̮��ɼ�i�{���K������ἒ~����]�'��M�!1�x.�Z��H�j��1�6����n)���,����L��g�ԡ7.,&?C��k�7[�D�����S��\Q�-(��`>�/z͈������9�(r�i��B�*?��^m�����O�T)V������p>�;��|T��@�nF׽����@X�Q�긻�:T�k86�����<]��2�G��h~�_o�_͵���Ԅ ��Hb�֕*��V��hvmj�#�$2?����ٕ/W��r� �;Wz>�[�>�����}��ǽ�������D1]5j�±xA�������ܰ$��2w������T��U�;6_������:���v���:���47�n'��\ �
  URV��Y��V�B��m:���[��Ϟ1�.�nC���/0Q�u��].�� �d� O ��\��u� C�a������e��,��m�]�H��H��xfǋ6�-��3��)�rÒ���	��EԾ�{��� ٰk2;��GB�4�ǴRER �*��� �2A�II����w�2c�q��'��5%���%��P�8����I·���r��cJj�k�_f1.�eo FIܴ+ϰ�NOt���_�n�vA�N��%!aˢ3��{���TM!-�3E1������.�Y�
w���u�V*>��A4$��ܤV)E	��W�l�o��!c���N���B��S����k���H�4W[t��@n�OY��]]S���:�d�����9mc�Ca0��d|��j��,����3<T��u��Y��,�����]���f��P���s�%��ZghR	(a�uuR��0�����7r\��W��*H�]�#�\���J�K�^��0:H�p5�s���%�?"���଄�_U�� i�#)vlJX��;Fԉ�.3�a-j76;��[m��8�y�� � �Q[`�*O��IP�� �A�r��3n���@PZܷP�!��G{����)){�l�*�-���v�sӁQO
0��c�m^�mJ��#d�a�]x՛��5������%�_?��ꂯcC
�r�o�bI>��r�ʹK��t��J�x�)j�x�`�6�Wi�?D%�$8%�C�M}w�K�4�9�;zK�4��p�H��nk�����e%�խ�3^�¶�&C��yc����4��Y�\�3����k����7���{^�&#gHIҹ��i��կ�Q�
��]ʮHp&���Q�o��Ư�/�!�N���k���?oJ������+5��˩�(�f�*R�KJ���L����j�#^���&���OI�z��lq��_�� c�<?��|�}�]�ꛗ��:z�͛��/|��o_G_���������oo����������:�}��u��ͷ�F�~|y��� ���D!+�e����09?�(���B��X�����R_+�2����#�5�ۥݣc���3Xq�\Y�.K	�5k�!�[�JeUlԽ��X��n�J8�+���Q\S��<�~���Ҫ�T)�p�-s����� �s�4�p�<mlm� ҷE�,MJ�Kq�J�y�*��}��su ܗI�«���v��a��u(��'���\n+;�I���a������oSeb��;�w��\�9Ϥb��	k�`��h��"r�t����\ZK=�ks��eQ�� ��Y�%�Y�_i�7a|��w���D�%����G�<�a4*�>2$���Q!}�fgr�͋�?�U3�r7��_[���i���:����� 8�����^h�z5C�B�9�xe�8�K�� ��p"_��*)҄�
_��5��"��hUR8?,h�`>���Q#EG(� �B��7���,�e�Z᯸D�$j��'�fb����D[���(�:w�h8�|�)���� iP��ҫ�qW$*{�!55��|������Y��-:
���te[�Ѻ�Y��t�XzQ�e��n\��� � \����~�>c��Z�S�-�g<M��Ƣ��!�Ao��?��|��ٴ.��#kV=�
�i_D�7�?��.��Q�4��Ix��s����K�<^S��q�~^�J�d�<�p�7��w�7a��c�(cD*B��p&^�Bgѭ���]������_�Jc߷�}�s����Q�>L�-�G*�p;B|D�҂}�V��u9�26vu�>�OG�&u���ECzkt׻s\5�Z��"�X [���b�W |�K��9}��5�wjAP�W�l�Eޠz�h�@$σ���������t��b���A����v$� ��s���}����ݍ�VЋ��O�c��tpy�C�l�9�ρ�4.��v�AK�fx�\H)Pׂr����g�6��|��U�p����*(�e���,����b�ƪ��[~��f�y/`��vOP\?C�o��
�njf���Հ5��`%[�~��^�������+|~�G��"�y��=�R�*�DX�>�D1܋0�!V�ʅD��{�w�$�TE�ʹ	t��i"�{?�.D����ܝ�4%SK��~��ԟ��S�s.,�:��ʬ�c�-��Z����l=:�C��5��;U�Y�_F�LO��L� )���}���.�;v��#��AA�BL��f� xz�5�_G��ZS�٥��5V��Z"����k�k��n��#�F7<Rbxk\�W��KG��軡*�ռ��3�9Ќof��'8� ������1�W9�?P��'˭�j�փ��
����-$�����?�w�,g���=	k.�&��_&k�ͦ��8/, �j�����	 ��OZ]��@��R��R.M�'��{�\S0�����6�9U�B8��&�hpz7���,�?�0����W�����U����9}��=�tV�?�6հ*�dZ�pi#`'ӓ�=�
Y�64xJh�L�39<���2ǁ��!?D���������ڢ���7^x���E��B��^3�Yөb����-���4n�KH�j�j���:2�>�zzQ �[���E��{9I� 7��h�N|%$�W���C�cdU<����T����K	���3����	���r��wzz���<V�      �   u  x���=nCA�k�a��e��&�����"��2P��W|�}�蚢]�����~�޷�����x}=~�ߧ^�V�zi wj*!;ȓ��/�-�N�RE]�yE�D��Q {�L�o�b��9�\M�h��·�
��iB�[4���$�4�
l��Cs�.crrb�RP�A1E/w���	cv�8��%Yx�h�����%�:��Ő^p��$�7Cs��GH�I{��gE,�u)ȝ$�<�s"��8��D~�y[�|�����"��w�5M�OҚ%���`�{�pb�{y�����Z���|�Y�X.��k#H�w��󎂃&�&��8 ��(D|�R�؄�h�6�E�Y�B���WT��Ь sO\g�R���W���}ܮ�����      �   e   x���@B�PLf�������8>.5P�p(��؍I]��ktP�ŚY��!�N�M�`:4j�w_|B�m�_:V����)�xt����vϿ��!��w�      �   !   x�34�4�22�4�26�4�22�4����� .>b      �   �  x��V�n�6}V��ݗ$�MK���[/(�@��-�b��i���Ф RQݯ����$N�̜93�(��>IC�^V�xd�h���ׇU�
Ek����Z��]Ӭ��X�����!x~
�I���e��6Ei��0��GEco�a���eo��Z	��frǲ	�lW�QD]~�2_1��$��2�4/�Gkr�g��I��(�����6�K����Y%hǖt�J;Nw�]�:����|ʐ��:�|����y�4�
f���-��F[[���;�̠�2�!�v<:��E�${��C�f5z�q�TojjX��@�*^݁}�Q���� �i�$~�y�$��|o}�,�Iz�|R�'$��5+�yz�ka�C�9^�3�M/+W�ᒊ�
��J�T�$��|M36����v`��M�:&+���1�Z��#3�Ӿ�n�;]����K�$4\��6k��רf���f��Q:Fp)z�j�\�2����*�;�{�NR����e�WC!{.�M�<�f}U�>��������J��B8��T�*A<�f�c}4�VL�{���Y��p#�\��Yp�'��B@�۽ځ���^�D�̡1��>��U�q��UW[�_ĚH�@�oj�h�#�3�}��[V�[�-��q�i3C-�<8������ U~|�n�� ���l�e�h���7��#B0��-ܜ\�����$��}]���v;�0sI��ؤ=z��n�q;''x�	=�� �F	��Z����r]Z���JT������X���0	�^��� f�W��o�/���<��: =�e���G�l)c�C%Fc j�(��q�T�i��'��i3)i�ٗk��}�>�����#û��s4P�G�#�[Z1���q����hm{�6őv/�L�T�\�۠/��cZ]�V�0�!��A����K�W	���՘��M����(x�����V\��J�"�s�/�y\�k���k�4�YH����:�u��a�C�����V�2dM��(Jȼ����؍�p��>]����3+�ɠt�^��i�A����xhѸ�.��M�؎��Ko�@h��'v}��m$�o kz��9]�~�{3 ��[޹0 U��⠆�����i�Se�D�Z֙�_��fH�4}��p��]�	�
g	��s��t�_�����J�Rv      �      x�3�4�2�4����� 1�      �      x������ � �      �   %  x����n�  г~�� DP�.׽���8uI�@R���n7�5��d�1����H?Ř�0Yd`��B+�[��k����� B�N�d�a���U���'���K�p�-���`���7�l��ï�ν+7Iǽ�_v�Vʮ�}B��Ƹ��ÇP�������<���am��K�Y�`� {@��5,�K�ҠZ���p)`����
ǐ����]Ğo)�9n�K'�\�S��T����m�nf��/�M3~IR����r��y!�p-��V�l� ���lG�C�v��<Ͽ`�|R      �   5   x�ʹ  B�X��	޽�B�'�E��E��먐��;���S3��_�	�      �   �   x�u�M
�0���)�	�I�%;��x�nb5�R�oQ
-����P�[�s�i��/����r�y����u��ہ��Y�?O�!TH���$m�����"I���9�V���g����DR���>�%2�w�/��R�D}EN      �      x������ � �      �      x������ � �     